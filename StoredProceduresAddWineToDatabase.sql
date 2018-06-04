USE [F1-1-15-WineDatabase]
GO

CREATE PROCEDURE procInsertWine
@prodName varchar(45), @vintage integer, @alcohol integer, @rating integer, @comment varchar(100),
@wineMaker varchar(45), @wineType varchar(45) AS
BEGIN 
INSERT INTO WINE
VALUES (@prodName, @vintage, @alcohol, @rating, @comment, @wineMaker, @wineType)
END
GO

CREATE PROCEDURE procInsertWineAndFlavour
@flavour varchar(45), @prodName varchar(45), @vintage integer AS
BEGIN
INSERT INTO WINEFLAVOUR
VALUES (@flavour, @prodName, @vintage)
END
GO

CREATE PROCEDURE procInsertWineAndFood
@relatedFood varchar(45), @prodName varchar(45), @vintage integer  AS
BEGIN
INSERT INTO RELATEDFOODTOWINE
VALUES (@relatedFood, @prodName, @vintage)
END
GO