-- 1. Afficher la liste des noms des focaccias par ordre alphabétique croissant
SELECT Nom FROM Foccacia
ORDER BY Nom ASC;

-- Voici le Résultat obtenu à la requête 1:
-- Américaine
-- Emmentalaccia
-- Gorgonzollaccia
-- Hawaienne
-- Mozaccia
-- Paysanne
-- Raclaccia
-- Tradizione


-- 2. Afficher le nombre total d'ingrédients
SELECT COUNT(*) AS Nombres_Ingredients
FROM Ingredients;

-- Voici le Résultat obtenu à la requête 2:
-- Nombres_Ingredients
-- 25


-- 3. Afficher le prix moyen des focaccias
SELECT AVG(Prix) AS Prix_Moyen_Foccacia
FROM Foccacia;

-- Voici le Résultat obtenu à la requête 3:
-- Prix_Moyen_Foccacia
-- 10.375


-- 4. Afficher la liste des boissons avec leur marque, triée par nom de boisson
SELECT Boisson.Nom AS Nom_Boisson, marque.Nom AS Marque
FROM Boisson
JOIN marque ON Boisson.marque_id = marque.Id_marque
ORDER BY Boisson.Nom;

-- Voici le Résultat obtenu à la requête 4:
-- Nom_Boisson                   Marque
-- --------------------------------------
-- Capri-sun                     Coca_cola
-- Coca-cola original            Coca_cola
-- Coca-cola zéro                Coca_cola
-- Eau de source                 Pepsico
-- Fanta citron                  Coca_cola
-- Fanta orange                  Coca_cola
-- Lipton Peach                  Pepsico
-- Lipton zéro citron            Pepsico
-- Monster energy ultra blue     Monster
-- Monster energy ultra gold     Monster
-- Pepsi                         Pepsico
-- Pepsi Max Zéro                Pepsico


-- 5. Afficher la liste des ingrédients pour une Raclaccia
SELECT Ingredients.Nom AS Ingredient
FROM Ingredient_Foccacia
JOIN Ingredients ON Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
JOIN Foccacia ON Foccacia.Id_Foccacia = Ingredient_Foccacia.Foccacia_id
WHERE Foccacia.Nom = 'Raclaccia';

-- Voici le Résultat obtenu à la requête 5:
-- Ingredient
-- Base Tomate
-- Raclette
-- Cresson
-- Ail
-- Champignon
-- Parmesan
-- Piment


-- 6. Afficher le nom et le nombre d'ingrédients pour chaque focaccia
SELECT Foccacia.Nom AS Nom_Foccacia, COUNT(Ingredients.Nom) AS Nombre_Ingredients
FROM Ingredient_Foccacia
JOIN Ingredients ON Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
JOIN Foccacia ON Foccacia.Id_Foccacia = Ingredient_Foccacia.Foccacia_id
GROUP BY Foccacia.Nom;

-- Voici le Résultat obtenu à la requête 6:
-- Nom_Foccacia       Nombre_Ingredients
-- -------------------------------------
-- Américaine            8
-- Emmentalaccia         7
-- Gorgonzollaccia       8
-- Hawaienne             9
-- Mozaccia              10
-- Paysanne              12
-- Raclaccia             7
-- Tradizione            9


-- 7. Afficher la focaccia avec le plus d'ingrédients
SELECT Foccacia.Nom AS Nom_Foccacia, COUNT(Ingredients.Nom) AS Nombre_Ingredients
FROM Ingredient_Foccacia
JOIN Ingredients ON Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
JOIN Foccacia ON Foccacia.Id_Foccacia = Ingredient_Foccacia.Foccacia_id
GROUP BY Foccacia.Nom
ORDER BY Nombre_Ingredients DESC
LIMIT 1;

-- Voici le Résultat obtenu à la requête 7:
-- Nom_Foccacia   Nombre_Ingredients
-- Paysanne         12


-- 8. Afficher la liste des focaccias qui contiennent de l'ail
SELECT DISTINCT Foccacia.Nom AS Nom_Foccacia
FROM Ingredient_Foccacia
JOIN Ingredients ON Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
JOIN Foccacia ON Foccacia.Id_Foccacia = Ingredient_Foccacia.Foccacia_id
WHERE Ingredients.Nom = 'Ail';

-- Voici le Résultat obtenu à la requête 8:
-- Nom_Foccacia
-- Mozaccia
-- Gorgonzollaccia
-- Raclaccia
-- Paysanne


-- 9. Afficher la liste des ingrédients inutilisés
SELECT Ingredients.Nom AS Ingredient
FROM Ingredients
LEFT JOIN Ingredient_Foccacia ON Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
WHERE Ingredient_Foccacia.Ingredients_id IS NULL;

-- Voici le Résultat obtenu à la requête 9:
-- Ingredient
-- Salami
-- Mozarella


-- 10. Afficher la liste des focaccias qui n'ont pas de champignons
SELECT Foccacia.Nom AS Nom_Foccacia
FROM Foccacia
WHERE NOT EXISTS (
    SELECT 1
    FROM Ingredient_Foccacia
    JOIN Ingredients ON Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
    WHERE Ingredients.Nom = 'Champignon'
    AND Ingredient_Foccacia.Foccacia_id = Foccacia.Id_Foccacia
);

-- Voici le Résultat obtenu à la requête 10:
-- Nom_Foccacia
-- Américaine
-- Hawaienne
 
