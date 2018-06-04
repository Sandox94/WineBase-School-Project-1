CREATE DATABASE [F1-1-15-WineDatabase]
GO

USE [F1-1-15-WineDatabase]
GO

CREATE TABLE [FLAVOUR]
( 
	[WineFlavour]        varchar(40)  NOT NULL ,
	CONSTRAINT [XPKFLAVOUR] PRIMARY KEY  CLUSTERED ([WineFlavour] ASC)
)
go

CREATE TABLE [MAKEROFWINE]
( 
	[WineMaker]          varchar(50)  NOT NULL ,
	[Nationality]        varchar(50)  NULL ,
	CONSTRAINT [XPKMAKEROFWINE] PRIMARY KEY  CLUSTERED ([WineMaker] ASC)
)
go

CREATE TABLE [TYPEOFWINE]
( 
	[WineType]           varchar(50)  NOT NULL ,
	CONSTRAINT [XPKTYPEOFWINE] PRIMARY KEY  CLUSTERED ([WineType] ASC)
)
go

CREATE TABLE [WINE]
( 
	[ProductName]        varchar(45)  NOT NULL ,
	[Vintage]            integer  NOT NULL ,
	[AlcoholLevel]       double precision  NULL ,
	[UserRating]         integer  NULL ,
	[UserComment]        varchar(100)  NULL ,
	[WineMaker]          varchar(50)  NOT NULL ,
	[WineType]           varchar(50)  NOT NULL ,
	CONSTRAINT [XPKWINE] PRIMARY KEY  CLUSTERED ([ProductName] ASC,[Vintage] ASC),
	CONSTRAINT [R_1] FOREIGN KEY ([WineMaker]) REFERENCES [MAKEROFWINE]([WineMaker])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT [R_3] FOREIGN KEY ([WineType]) REFERENCES [TYPEOFWINE]([WineType])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go

CREATE TABLE [WINEFLAVOUR]
( 
	[WineFlavour]        varchar(40)  NOT NULL ,
	[ProductName]        varchar(45)  NOT NULL ,
	[Vintage]            integer  NOT NULL ,
	CONSTRAINT [XPKWINEFLAVOUR] PRIMARY KEY  CLUSTERED ([WineFlavour] ASC,[ProductName] ASC,[Vintage] ASC),
	CONSTRAINT [R_8] FOREIGN KEY ([WineFlavour]) REFERENCES [FLAVOUR]([WineFlavour])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT [R_9] FOREIGN KEY ([ProductName],[Vintage]) REFERENCES [WINE]([ProductName],[Vintage])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go

CREATE TABLE [RELATEDFOOD]
( 
	[RelatedFood]        varchar(40)  NOT NULL ,
	CONSTRAINT [XPKRELATEDFOOD] PRIMARY KEY  CLUSTERED ([RelatedFood] ASC)
)
go

CREATE TABLE [RELATEDFOODTOWINE]
( 
	[RelatedFood]        varchar(40)  NOT NULL ,
	[ProductName]        varchar(45)  NOT NULL ,
	[Vintage]            integer  NOT NULL ,
	CONSTRAINT [XPKRELATEDFOODTOWINE] PRIMARY KEY  CLUSTERED ([RelatedFood] ASC,[ProductName] ASC,[Vintage] ASC),
	CONSTRAINT [R_5] FOREIGN KEY ([RelatedFood]) REFERENCES [RELATEDFOOD]([RelatedFood])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
CONSTRAINT [R_6] FOREIGN KEY ([ProductName],[Vintage]) REFERENCES [WINE]([ProductName],[Vintage])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
)
go


CREATE TRIGGER tD_FLAVOUR ON FLAVOUR FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on FLAVOUR */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* FLAVOUR  WINEFLAVOUR on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00011744", PARENT_OWNER="", PARENT_TABLE="FLAVOUR"
    CHILD_OWNER="", CHILD_TABLE="WINEFLAVOUR"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="WineFlavour" */
    IF EXISTS (
      SELECT * FROM deleted,WINEFLAVOUR
      WHERE
        /*  %JoinFKPK(WINEFLAVOUR,deleted," = "," AND") */
        WINEFLAVOUR.WineFlavour = deleted.WineFlavour
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete FLAVOUR because WINEFLAVOUR exists.'
      GOTO error
    END


    /* ERwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_FLAVOUR ON FLAVOUR FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on FLAVOUR */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insWineFlavour varchar(40),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* FLAVOUR  WINEFLAVOUR on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00012852", PARENT_OWNER="", PARENT_TABLE="FLAVOUR"
    CHILD_OWNER="", CHILD_TABLE="WINEFLAVOUR"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="WineFlavour" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(WineFlavour)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,WINEFLAVOUR
      WHERE
        /*  %JoinFKPK(WINEFLAVOUR,deleted," = "," AND") */
        WINEFLAVOUR.WineFlavour = deleted.WineFlavour
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update FLAVOUR because WINEFLAVOUR exists.'
      GOTO error
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_MAKEROFWINE ON MAKEROFWINE FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on MAKEROFWINE */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* MAKEROFWINE  WINE on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0000fcf8", PARENT_OWNER="", PARENT_TABLE="MAKEROFWINE"
    CHILD_OWNER="", CHILD_TABLE="WINE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="WineMaker" */
    IF EXISTS (
      SELECT * FROM deleted,WINE
      WHERE
        /*  %JoinFKPK(WINE,deleted," = "," AND") */
        WINE.WineMaker = deleted.WineMaker
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete MAKEROFWINE because WINE exists.'
      GOTO error
    END


    /* ERwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_MAKEROFWINE ON MAKEROFWINE FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on MAKEROFWINE */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insWineMaker varchar(50),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* MAKEROFWINE  WINE on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00011f70", PARENT_OWNER="", PARENT_TABLE="MAKEROFWINE"
    CHILD_OWNER="", CHILD_TABLE="WINE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="WineMaker" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(WineMaker)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,WINE
      WHERE
        /*  %JoinFKPK(WINE,deleted," = "," AND") */
        WINE.WineMaker = deleted.WineMaker
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update MAKEROFWINE because WINE exists.'
      GOTO error
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_TYPEOFWINE ON TYPEOFWINE FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on TYPEOFWINE */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* TYPEOFWINE  WINE on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000103e9", PARENT_OWNER="", PARENT_TABLE="TYPEOFWINE"
    CHILD_OWNER="", CHILD_TABLE="WINE"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="WineType" */
    IF EXISTS (
      SELECT * FROM deleted,WINE
      WHERE
        /*  %JoinFKPK(WINE,deleted," = "," AND") */
        WINE.WineType = deleted.WineType
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete TYPEOFWINE because WINE exists.'
      GOTO error
    END


    /* ERwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.