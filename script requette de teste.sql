--1. Afficher la liste des noms des focaccias par ordre alphabétique croissant,

SELECT Nom from Foccacia ORDER By Nom ASC;

-- On obtiens la liste des focasia dans l'ordre alphabétique .
--1 Américaine,
--2 Emmentalaccia,
--3 Gorgonzollaccia,
--4 Hawaienne,
--5 Mozaccia,
--6 Paysanne,
--7 Raclaccia,
--8 Tradizione,


-- 2. Afficher le nombre total d'ingrédients, 

SELECT COUNT(*) as "Nombres D'Ingredients" FROM Ingredients;

--On obtien le norbre total d'ingrédient différents.


--3. Afficher le prix moyen des focaccias, 

SELECT avg (Prix) as " Prix moyenne Foccacia" FROM Foccacia;

-- On obtien le prix moyen de toutes les foccacia, qui est 10.375.

--4. Afficher la liste des boissons avec leur marque, triée par nom de boisson, 

SELECT Boisson.Nom , marque.Nom FROM Marque_Boisson 
JOIN Boisson ON Marque_Boisson.Boisson_id = Boisson.Id_boisson 
JOIN marque ON Marque_Boisson.marque_id = marque.Id_marque
ORDER BY Boisson.Nom;

-- resultatl obtenu liste des boissons et de leurs marque .

/*
Capri-sun	Coca_cola
Coca-cola original	Coca_cola
Coca-cola zéro	Coca_cola
Eau de source	Pepsico
Fanta citron	Coca_cola
Fanta orange	Coca_cola
Lipton Peach	Cristaline
Lipton zéro citron	Cristaline
Monster energy ultra blue	Monster
Monster energy ultra gold	Monster
Pepsi	Cristaline
Pepsi Max Zéro	Cristaline
*/

--5. Afficher la liste des ingrédients pour une Raclaccia, 

SELECT Ingredients.Nom From Ingredient_Foccacia 
JOIN Ingredients on Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
JOIN Foccacia on Foccacia.Id_Foccacia =  Ingredient_Foccacia.Foccacia_id
WHERE Foccacia.Nom = "Raclaccia"; 

-- liste des ingredients de la foccacia.

/*
Base Tomate
Raclette
Cresson
Ail
Champignon
Parmesan
Piment
*/

--6. Afficher le nom et le nombre d'ingrédients pour chaque foccacia, 
SELECT count (Ingredients.Nom) as "Nombre d'Ingredients" , Foccacia.Nom as " Nom des Foccacia" From Ingredient_Foccacia 
JOIN Ingredients on Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
JOIN Foccacia on Foccacia.Id_Foccacia =  Ingredient_Foccacia.Foccacia_id
group by Foccacia.Nom; 

-- tableau avec nombre d'ingredient propre a la Foccacia, 

/* 
8	Américaine
7	Emmentalaccia
8	Gorgonzollaccia
9	Hawaienne
10	Mozaccia
12	Paysanne
7	Raclaccia
9	Tradizione
*/

--7. Afficher le nom de la focaccia qui a le plus d'ingrédients, 

SELECT count (Ingredients.Nom)as "nombre_Ingredients" , Foccacia.Nom as " Nom des Foccacia"  From Ingredient_Foccacia 
JOIN Ingredients on Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
JOIN Foccacia on Foccacia.Id_Foccacia =  Ingredient_Foccacia.Foccacia_id
group by Foccacia.Nom ORDER by nombre_Ingredients  desc LIMIT 1
; 

-- Affiche la focation avec le plus d'Ingredients,
--nombres d'ingrédient et la nom de la foccacia

-- 12	Paysanne



--8. Afficher la liste des focaccia qui contiennent de l'ail,
 
SELECT Foccacia.Nom as " Nom des Foccacia" From Ingredient_Foccacia 
JOIN Ingredients on Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
JOIN Foccacia on Foccacia.Id_Foccacia =  Ingredient_Foccacia.Foccacia_id
WHERE Ingredients.nom = "Ail"; 

-- affiche les 4 focacias qui contient de l'ail , 
/*
Mozaccia
Gorgonzollaccia
Raclaccia
Paysanne
*/


--9. Afficher la liste des ingrédients inutilisés, 

SELECT Ingredients.Nom FROM Ingredients
LEFT JOIN Ingredient_Foccacia ON Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
WHERE Ingredient_Foccacia.Ingredients_id IS NULL;

--On obtien les deux Ingredients qui ne sont pas utiliser dans les Foccacia, Salami et Mozarella


--10. Afficher la liste des focaccia qui n'ont pas de champignons.

SELECT Foccacia.Nom AS "Nom des Foccacias" FROM Foccacia WHERE NOT EXISTS (
    SELECT 1
    FROM Ingredient_Foccacia
    JOIN Ingredients ON Ingredients.Id_Ingredients = Ingredient_Foccacia.Ingredients_id
    WHERE Ingredients.Nom = "Champignon" 
    AND Ingredient_Foccacia.Foccacia_id = Foccacia.Id_Foccacia
);

--On obetien les 2 Foccacia sans champignon, qui sont : Hawaienne et l' Américaine
 