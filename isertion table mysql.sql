USE `tifosi`;

-- Insertion des ingrédients
INSERT INTO `Ingredients` (`Nom`) VALUES
('Ail'), ('Ananas'), ('Artichaut'), ('Bacon'), ('Base Tomate'),
('Base crème'), ('Champignon'), ('Chevre'), ('Cresson'), ('Emmental'),
('Gorgonzola'), ('Jambon fumé'), ('Jambon cuit'), ('Oeuf'), ('Oignon'),
('Olive vert'), ('Olive noir'), ('Parmesan'), ('Piment'), ('Poivre'),
('Pomme de terre'), ('Raclette'), ('Salami'), ('Tomate Cerise'), ('Mozarella');

-- Insertion des focaccias
INSERT INTO `Foccacia` (`Nom`, `Prix`) VALUES
('Mozaccia', 9.80),
('Gorgonzollaccia', 10.80),
('Raclaccia', 8.90),
('Emmentalaccia', 9.80),
('Tradizione', 8.90),
('Hawaienne', 11.20),
('Américaine', 10.80),
('Paysanne', 12.80);

-- Insertion des marques
INSERT INTO `marque` (`Nom`) VALUES
('Coca_cola'), ('Cristaline'), ('Monster'), ('Pepsico');

-- Insertion des boissons
INSERT INTO `Boisson` (`Nom`, `marque_id`) VALUES
('Coca-cola zéro', 1),
('Coca-cola original', 1),
('Fanta citron', 1),
('Fanta orange', 1),
('Capri-sun', 1),
('Pepsi', 2),
('Pepsi Max Zéro', 2),
('Lipton zéro citron', 2),
('Lipton Peach', 2),
('Monster energy ultra gold', 3),
('Monster energy ultra blue', 3),
('Eau de source', 4);

-- Insertion des ingrédients associés à la Foccacia 1 (Mozaccia)
INSERT INTO `Ingredient_Foccacia` (`Quantitee`, `Foccacia_id`, `Ingredients_id`) VALUES
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

INSERT INTO Ingredient_Foccacia (Quantitee, Foccacia_id, Ingredients_id) VALUES
(200, 2, 5),
(50, 2, 11),
(20, 2, 9),
(2, 2, 1),
(40, 2, 7),
(50, 2, 18),
(1, 2, 19),
(20, 2, 16);

INSERT INTO Ingredient_Foccacia (Quantitee, Foccacia_id, Ingredients_id) VALUES
(200, 3, 5),
(50, 3, 22),
(20, 3, 9),
(2, 3, 1),
(40, 3, 7),
(50, 3, 18),
(1, 3, 19);

INSERT INTO Ingredient_Foccacia (Quantitee, Foccacia_id, Ingredients_id) VALUES
(200, 4, 6),
(50, 4, 10),
(20, 4, 9),
(40, 4, 7),
(50, 4, 18),
(1, 4, 19),
(20, 4, 15);

INSERT INTO Ingredient_Foccacia (Quantitee, Foccacia_id, Ingredients_id) VALUES
(200, 5, 5),
(50, 5, 24),
(20, 5, 9),
(80, 5, 12),
(40, 5, 7),
(50, 5, 18),
(1, 5, 19),
(20, 5, 16),
(20, 5, 17);

INSERT INTO Ingredient_Foccacia (Quantitee, Foccacia_id, Ingredients_id) VALUES
(200, 6, 5),
(50, 6, 24),
(20, 6, 9),
(80, 6, 4),
(40, 6, 2),
(2, 6, 20),
(50, 6, 18),
(1, 6, 19),
(20, 6, 16);

INSERT INTO Ingredient_Foccacia (Quantitee, Foccacia_id, Ingredients_id) VALUES
(200, 7, 5),
(50, 7, 24),
(20, 7, 9),
(80, 7, 4),
(80, 7, 21),
(50, 7, 18),
(1, 7, 19),
(20, 7, 16);

INSERT INTO Ingredient_Foccacia (Quantitee, Foccacia_id, Ingredients_id) VALUES
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
