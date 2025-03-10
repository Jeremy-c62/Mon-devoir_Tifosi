-- On insére tout les ingrédient dans le tableau. 
INSERT INTO Ingredients (nom) VALUES
	('Ail'), 
	('Ananas') , 
	('Artichaut'), 
	('Bacon'), 
	('Base Tomate') , 
	('Base crème'), 
	('Champignon') , 
	('Chevre'),
	('Cresson'), 
	('Emmental'), 
	('Gorgonzola'), 
	('Jambon fumé'), 
	('Jambon cuit'), 
	('Ouef'), 
	('Oignon'), 
	('Olive vert'), 
	('Olive noir'), 
	('Parmesan'), 
	('Piment'), 
	('Poivre'), 
	('Pomme de terre'), 
	('Raclette'), (
	'Salami'), 
	('Tomate Cerise'), 
	('Mozarella');

-- On crée tout les foccasia et leurs prix unitaire.
INSERT INTO "Foccacia" ("Nom", "Prix") VALUES
('Mozaccia', 9.80),
('Gorgonzollaccia', 10.80),
('Raclaccia', 8.90),
('Emmentalaccia', 9.80),
('Tradizione', 8.90),
('Hawaienne', 11.20),
('Américaine', 10.80),
('Paysanne', 12.80);

--On ajouter toute les marque des boissons.
INSERT INTO "marque" ("Nom") VALUES
('Coca_cola'),
('Cristaline'), 
('Monster'), 
('Pepsico');

--On crée tout les boisson qui sont réferencer.

INSERT INTO "Boisson" ("Nom") VALUES
('Coca-cola zéro'),
('Coca-cola original'),
('Fanta citron'),
('Fanta orange'),
('Capri-sun'),
('Pepsi'),
('Pepsi Max Zéro'),
('Lipton zéro citron'),
('Lipton Peach'),
('Monster energy ultra gold'),
('Monster energy ultra blue'),
('Eau de source');

--on met en relation les boisson a leurs marques.
INSERT INTO Marque_Boisson (Boisson_id, marque_id) VALUES
(1, 1), 
(2, 1),  
(3, 1),  
(4, 1),  
(5, 1),  
(6, 2),  
(7, 2),  
(8, 2),  
(9, 2),  
(10, 3), 
(11, 3),  
(12, 4); 

/* On définie la compossition des foccacia avec les Ingrédients et la quantitée.

(Quantité, ID de la foccacia, Id Ingrédient)

on répéte la meme opération pour les 8 foccacia.
*/

INSERT INTO Ingredient_Foccacia (Quantitée, Foccacia_id, Ingredients_id) VALUES
(200, 1, 5),
(50, 1, 24),
(20, 1, 9),
(80, 1, 13),
(2, 1, 1),
(20, 1, 3),
(40, 1, 7),
(50, 1, 18),
(1, 1, 19),
(20, 1, 16);

INSERT INTO Ingredient_Foccacia (Quantitée, Foccacia_id, Ingredients_id) VALUES
(200, 2, 5),
(50, 2, 11),
(20, 2, 9),
(2, 2, 1),
(40, 2, 7),
(50, 2, 18),
(1, 2, 19),
(20, 2, 16);

INSERT INTO Ingredient_Foccacia (Quantitée, Foccacia_id, Ingredients_id) VALUES
(200, 3, 5),
(50, 3, 22),
(20, 3, 9),
(2, 3, 1),
(40, 3, 7),
(50, 3, 18),
(1, 3, 19);

INSERT INTO Ingredient_Foccacia (Quantitée, Foccacia_id, Ingredients_id) VALUES
(200, 4, 6),
(50, 4, 10),
(20, 4, 9),
(40, 4, 7),
(50, 4, 18),
(1, 4, 19),
(20, 4, 15);

INSERT INTO Ingredient_Foccacia (Quantitée, Foccacia_id, Ingredients_id) VALUES
(200, 5, 5),
(50, 5, 24),
(20, 5, 9),
(80, 5, 12),
(40, 5, 7),
(50, 5, 18),
(1, 5, 19),
(20, 5, 16),
(20, 5, 17);

INSERT INTO Ingredient_Foccacia (Quantitée, Foccacia_id, Ingredients_id) VALUES
(200, 6, 5),
(50, 6, 24),
(20, 6, 9),
(80, 6, 4),
(40, 6, 2),
(2, 6, 20),
(50, 6, 18),
(1, 6, 19),
(20, 6, 16);

INSERT INTO Ingredient_Foccacia (Quantitée, Foccacia_id, Ingredients_id) VALUES
(200, 7, 5),
(50, 7, 24),
(20, 7, 9),
(80, 7, 4),
(80, 7, 21),
(50, 7, 18),
(1, 7, 19),
(20, 7, 16);

INSERT INTO Ingredient_Foccacia (Quantitée, Foccacia_id, Ingredients_id) VALUES
(200, 8, 6),
(50, 8, 8),
(20, 8, 9),
(80, 8, 21),
(80, 8, 13),
(2, 8, 1),
(20, 8, 3),
(40, 8, 7),
(50, 8, 18),
(1, 8, 19),
(20, 8, 16),
(50, 8, 14);
