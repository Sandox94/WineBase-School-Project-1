USE [F1-1-15-WineDatabase]

--Lage View tabell for Rødvin
CREATE VIEW RØDVIN AS 
SELECT ProductName, WineMaker, AlcoholLevel, WineType
FROM WINE
WHERE WineType = 'Rødvin'

-- Fjerne Rødvin View
DROP VIEW RØDVIN

-- Sortere etter varetype
SELECT *
FROM WINE
ORDER BY WineType ASC

--Sorter Produkt navn fra View Rødvin
SELECT *
FROM RØDVIN
ORDER BY ProductName ASC

--Lage View tabell for Hvitvin
CREATE VIEW HVITVIN AS
SELECT ProductName, WineMaker, AlcoholLevel, WineType
FROM WINE
WHERE WineType = 'Hvitvin'

-- Fjerne Hvitvin View
DROP VIEW HVITVIN

--Sortere etter Produktnavn
SELECT *
FROM WINE
ORDER BY ProductName ASC

--Lage View tabell for Portvin
CREATE VIEW PORTVIN AS
SELECT ProductName, WineMaker, AlcoholLevel, WineType
FROM WINE
WHERE WineType = 'Portvin'

-- Fjerne Hvitvin View
DROP VIEW PORTVIN

-- Lage View hvor hentere spesifik produkt
CREATE VIEW ÅR AS
SELECT Vintage, ProductName
FROM WINE
WHERE ProductName = 'Grahams Late Bottled Vintage '

-- Sortere etter rekkefølge fra VIN og MAKEROFWINE
SELECT DISTINCT*
FROM WINE, MAKEROFWINE
ORDER BY  Vintage ASC

-- Sortere etter rekkefølge fra VIN og VINSMAK
SELECT *
FROM WINE,WINEFLAVOUR
ORDER BY WineFlavour ASC


----------------------------------------
--Lager View for Mat
CREATE VIEW MAT AS
SELECT DISTINCT RELATEDFOOD
FROM RELATEDFOODTOWINE

-- oppdatere ny informasjon til mat
UPDATE WINE
SET UserComment = ''
WHERE ProductName = 'Periquita Original'



--DELETE WINE
--WHERE ProductName = ('Grahams Late Bottled Vintage')

--INSERT INTO MAKEROFWINE
--VALUES ('Symington Family Est','Portugal')

--INSERT INTO WINE
--VALUES ('Grahams Late Bottled Vintage', 2008, 20.00, '', '', 'Symington Family Est','Portvin')

--INSERT INTO RELATEDFOOD
--VALUES ('Svinekjøtt')

--INSERT INTO RELATEDFOODTOWINE
--VALUES ('Svinekjøtt',' Grahams Late Bottled Vintage', 2008)

-- legger inn nye verdier for makerOfWine
INSERT INTO MAKEROFWINE
VALUES ('Barone Ricasoli','Italy')
-- legger inn nye verdier på vin
INSERT INTO WINE
VALUES ('Brolio Chianti Classico', 2010, 13.00, '', '', 'Barone Ricasoli','Rødvin')

-- legger inn nye verdier for makerOfWine
INSERT INTO MAKEROFWINE
VALUES ('H. Sichel Söhne','Tyskland')
-- legger inn nye verdier på vin
INSERT INTO WINE
VALUES ('Blue Nun',2001, 8.50,' ' , '', 'H. Sichel Söhne', 'Hvitvin')

-- legger inn nye verdier for makerOfWine
INSERT INTO MAKEROFWINE
VALUES ('Sandeman','USA')
-- legger inn nye verdier på vin
INSERT INTO WINE
VALUES ('Sandeman Fine Tawny', 1990, 19.50,'','', 'Sandeman','Portvin')


--Slette verdier fra vin
DELETE FROM WINE
WHERE ProductName = 'Brolio Chianti Classico'

--Slette verdier fra vin
DELETE FROM WINE
WHERE ProductName = 'Sandeman Fine Tawny'




