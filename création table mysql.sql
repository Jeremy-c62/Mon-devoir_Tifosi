DROP table If EXISTS Boisson_menu;
DROP table If EXISTS Ingredient_Foccacia;
DROP table If EXISTS Foccacia_menu;
DROP table If EXISTS Marque_Boisson;  
DROP table If EXISTS Achats;
DROP table If EXISTS Menu;
DROP table If EXISTS Foccacia;
DROP table If EXISTS marque; 
DROP table If EXISTS Boisson;
DROP table If EXISTS Ingredients;
DROP table If EXISTS Clients;

--Création des différentes tables pour chaque type de produit et la mise en correspondance avec des "sous tables" .

CREATE TABLE "Menu" (
	"Id_Menu"	INTEGER NOT NULL UNIQUE,
	"Nom"	TEXT NOT NULL,
	"Prix" Decimal (5,2),
	PRIMARY KEY("Id_Menu" AUTOINCREMENT)
);

CREATE TABLE "Foccacia" (
	"Id_Foccacia"	INTEGER NOT NULL UNIQUE,
	"Nom"	varchar(50) NOT NULL,
	"Prix" Decimal (5,2),
	PRIMARY KEY("Id_Foccacia" AUTOINCREMENT)
);


CREATE TABLE "marque" (
	"Id_marque"	INTEGER NOT NULL UNIQUE,
	"Nom"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("Id_marque" AUTOINCREMENT)
);


CREATE TABLE "Boisson" (
	"Id_boisson"	INTEGER NOT NULL UNIQUE,
	"Nom"	TEXT NOT NULL,
	PRIMARY KEY("Id_boisson" AUTOINCREMENT)
);

CREATE TABLE "Ingredients" (
	"Id_Ingredients"	INTEGER NOT NULL UNIQUE,
	"Nom"	TEXT NOT NULL,
	PRIMARY KEY("Id_Ingredients" AUTOINCREMENT)
);


CREATE TABLE "Clients" (
	"Id_Clients"	INTEGER NOT NULL UNIQUE,
	"Nom"	TEXT NOT NULL,
	"Email" varchar (150) UNIQUE NOT NULL,
	"Code_postal" INTEGER, 
	PRIMARY KEY("Id_Clients" AUTOINCREMENT)
);



CREATE TABLE "Ingredient_Foccacia" (
	"Quantitée" INTEGER,
	"Foccacia_id" INTEGER,
	"Ingredients_id" INTEGER,
	FOREIGN KEY ("Foccacia_id") REFERENCES Foccacia (Id_Foccacia),
	FOREIGN KEY ("Ingredients_id") REFERENCES Ingredients (Id_Ingredients)
);

CREATE TABLE "Foccacia_menu" (
	"Foccacia_id" INTEGER,
	"Menu_id" INTEGER,
	FOREIGN KEY ("Foccacia_id") REFERENCES Foccacia (Id_Foccacia),
	FOREIGN KEY ("Menu_id") REFERENCES Menu (Id_Menu)
);

CREATE TABLE "Boisson_menu" (
	"Boisson_id" INTEGER,
	"Menu_id" INTEGER,
	FOREIGN KEY ("Boisson_id") REFERENCES Boisson (Id_boisson),
	FOREIGN KEY ("Menu_id") REFERENCES Menu (Id_Menu)
);

CREATE TABLE "Marque_Boisson" (
	"Boisson_id" INTEGER,
	"marque_id" INTEGER,
	FOREIGN KEY ("Boisson_id") REFERENCES Boisson (Id_boisson),
	FOREIGN KEY ("marque_id") REFERENCES Marque (Id_marque)
);

CREATE TABLE "Achats" (
	"Menu_id" INTEGER,
	"Clients_id" INTEGER,
	"Date_Achats" datetime,
	FOREIGN KEY ("Menu_id") REFERENCES Menu (Id_Menu),
	FOREIGN KEY ("Clients_id") REFERENCES Clients (Id_Clients)
);
