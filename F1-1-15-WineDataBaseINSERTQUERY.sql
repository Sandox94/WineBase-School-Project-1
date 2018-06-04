USE [F1-1-15-WineDatabase]

INSERT INTO MAKEROFWINE /*Legger inn vinprodusenter og land*/
VALUES ('Southern Right','Sør-Afrika'), ('H. Sichel Söhne', 'Tyskland'),('Symington Family Est.', 'Portugal'),
('Ruffino', 'Spania'), ('Bollinger', 'Argentina'), ('Bod. Campo Viejo', 'Italia'), ('J.M. da Fonseca', 'Spania'),
('Domaine de la Romanèe-Conti', 'Frankrike'), ('Ch. Mosse', 'Frankrike'), ('Domaine Gramenon', 'Frankrike'),
('Duval-Leroy', 'Frankrike'), ('Gaia Estate', 'Hellas')

INSERT INTO TYPEOFWINE /*Legger inn ulike vintyper*/
VALUES ('Rødvin'),('Hvitvin'), ('Musserende'), ('Portvin'), ('Rosévin'), ('Hetvin'), ('Dessertvin')

INSERT INTO RELATEDFOOD /*Legger inn ulike anbefalte matretter*/
VALUES ('Fisk'), ('Storfe'), ('Ost'), ('Skalldyr'),('Svin'),('Dessert'),('Spekemat'),('Kalv'),('Lam')

INSERT INTO FLAVOUR /*Legger inn et lite utvalg typiske vinsmaker*/
VALUES('Lakris'), ('Mynte'), ('Urter'), ('Bær'), ('Vanilje'), ('Krydder'), ('Brent tre'), ('Sitrus'), ('Frukt'), ('Nøtter'), ('Sjokolade')


INSERT INTO WINE /*Legger inn en liten seleksjon av viner for å teste funksjonalitet*/
VALUES ('Romanèe-Conti Grand Cru', 2012, 18, 100, 'Rødvin for den kresne gane', 'Domaine de la Romanèe-Conti', 'Rødvin'),
('Rivesaltes Ch. Mosse 1949', 1935, 18, 96, 'Perfekt for vinentusiasten', 'Ch. Mosse', 'Hetvin'),
('Côtes-du-Rhône', 2008, 16, 89, 'Anbefales til lammefrikasè', 'Domaine Gramenon', 'Rosévin'),
('Blue Nun', 2005, 8.5, 81, 'Flott vin til fine anledninger', 'H. Sichel Söhne', 'Hvitvin'),
('Lanson Black Label Brut', 2007, 12, 87, 'Sprudlende og aromatisk', 'Duval-Leroy', 'Musserende'),
('Anatolikos', 2004, 17, 85, 'Utmerket til sjokoladedesserter', 'Gaia Estate', 'Dessertvin'),
('Southern Right Pinotage', 2009, 13.5, 68, 'Rimelig og godt alternativ', 'Southern Right', 'Rødvin'),
('Grahams Late Bottled Vintage',2001, 20, 82, 'Klassiker i ny årgang', 'Symington Family Est.', 'Portvin'), 
('Rosatello', 2012, 16, 76, 'Denne vinen mangler kommentar', 'Ruffino', 'Rosévin'),
('Bollinger Spécial Cuvée', 1997, 12, 82, 'Spesialutgave i begrenset antall', 'Bollinger', 'Musserende'),
('Siglo Saco Crianza', 2014, 13.5, 62, 'Kan være krevende på nybegynnere', 'Bod. Campo Viejo', 'Rødvin'),
('Periquita Original', 2010, 13, 94, 'En flaske som hører hjemme i enhver respektabel samling', 'J.M. da Fonseca', 'Hvitvin')


INSERT INTO WINEFLAVOUR /*Setter inn smaker til respektive produktnavn og årgang*/
VALUES ('Bær', 'Romanèe-Conti Grand Cru', 2012), ('Frukt','Rivesaltes Ch. Mosse 1949', 1935), ('Krydder', 'Côtes-du-Rhône', 2008),
('Lakris', 'Blue Nun', 2005), ('Sitrus', 'Lanson Black Label Brut', 2007), ('Sjokolade', 'Anatolikos', 2004), ('Urter', 'Southern Right Pinotage', 2009),
('Mynte', 'Grahams Late Bottled Vintage',2001), ('Vanilje','Rosatello', 2012), ('Nøtter', 'Bollinger Spécial Cuvée', 1997), ('Bær', 'Siglo Saco Crianza', 2014),
('Brent tre', 'Periquita Original', 2010)


INSERT INTO RELATEDFOODTOWINE /*Setter inn anbefalte matretter til respektive produktnavn og årgang*/
VALUES ('Storfe', 'Romanèe-Conti Grand Cru', 2012), ('Ost', 'Rivesaltes Ch. Mosse 1949', 1935), ('Lam', 'Côtes-du-Rhône', 2008),
('Skalldyr', 'Blue Nun', 2005), ('Spekemat', 'Lanson Black Label Brut', 2007), ('Dessert','Anatolikos', 2004), ('Kalv', 'Southern Right Pinotage', 2009),
('Ost', 'Grahams Late Bottled Vintage',2001), ('Svin','Rosatello', 2012), ('Fisk', 'Bollinger Spécial Cuvée', 1997), ('Kalv','Siglo Saco Crianza', 2014),
('Storfe', 'Periquita Original', 2010)

  