CREATE Database [Vindatabase]
GO

USE [Vindatabase]
GO

CREATE TABLE [E_9_VIN]
( 
	[Produktnavn]        varchar(45)  NOT NULL ,
	[Vinprodusent]       varchar(45)  NOT NULL ,
	[Vinsmak]            varchar(45)  NOT NULL 
)
go

ALTER TABLE [E_9_VIN]
	ADD CONSTRAINT [XPKE_9_VIN] PRIMARY KEY  CLUSTERED ([Produktnavn] ASC,[Vinprodusent] ASC,[Vinsmak] ASC)
go

CREATE TABLE [MATTYPER]
( 
	[Mattyper_til_vin]   varchar(45)  NOT NULL 
)
go

ALTER TABLE [MATTYPER]
	ADD CONSTRAINT [XPKMATTYPER] PRIMARY KEY  CLUSTERED ([Mattyper_til_vin] ASC)
go

CREATE TABLE [MATTYPER_VIN]
( 
	[Mattyper_til_vin]   varchar(45)  NOT NULL ,
	[Produktnavn]        varchar(45)  NOT NULL ,
	[Vinprodusent]       varchar(45)  NOT NULL 
)
go

ALTER TABLE [MATTYPER_VIN]
	ADD CONSTRAINT [XPKMATTYPER_VIN] PRIMARY KEY  CLUSTERED ([Mattyper_til_vin] ASC,[Produktnavn] ASC,[Vinprodusent] ASC)
go

CREATE TABLE [PRODUSENT]
( 
	[Vinprodusent]       varchar(45)  NOT NULL ,
	[Nasjonalitet]       varchar(45)  NULL 
)
go

ALTER TABLE [PRODUSENT]
	ADD CONSTRAINT [XPKPRODUSENT] PRIMARY KEY  CLUSTERED ([Vinprodusent] ASC)
go

CREATE TABLE [VIN]
( 
	[Produktnavn]        varchar(45)  NOT NULL ,
	[Vinprodusent]       varchar(45)  NOT NULL ,
	[Prosent]            int  NULL ,
	[Varetype]           varchar(45)  NULL 
)
go

ALTER TABLE [VIN]
	ADD CONSTRAINT [XPKVIN] PRIMARY KEY  CLUSTERED ([Produktnavn] ASC,[Vinprodusent] ASC)
go

CREATE TABLE [VINSMAK]
( 
	[Vinsmak]            varchar(45)  NOT NULL 
)
go

ALTER TABLE [VINSMAK]
	ADD CONSTRAINT [XPKVINSMAK] PRIMARY KEY  CLUSTERED ([Vinsmak] ASC)
go

CREATE TABLE [VURDERING]
( 
	[Poeng]              int  NOT NULL 
)
go

ALTER TABLE [VURDERING]
	ADD CONSTRAINT [XPKVURDERING] PRIMARY KEY  CLUSTERED ([Poeng] ASC)
go

CREATE TABLE [≈R]
( 
	[≈r]                 int  NOT NULL 
)
go

ALTER TABLE [≈R]
	ADD CONSTRAINT [XPK≈R] PRIMARY KEY  CLUSTERED ([≈r] ASC)
go

CREATE TABLE [≈RGANGSVIN]
( 
	[≈r]                 int  NOT NULL ,
	[Produktnavn]        varchar(45)  NOT NULL ,
	[Kommentar]          varchar(45)  NULL ,
	[Poeng]              int  NULL ,
	[Vinprodusent]       varchar(45)  NOT NULL 
)
go

ALTER TABLE [≈RGANGSVIN]
	ADD CONSTRAINT [XPK≈RGANG] PRIMARY KEY  CLUSTERED ([≈r] ASC,[Produktnavn] ASC,[Vinprodusent] ASC)
go


ALTER TABLE [E_9_VIN]
	ADD CONSTRAINT [R_17] FOREIGN KEY ([Produktnavn],[Vinprodusent]) REFERENCES [VIN]([Produktnavn],[Vinprodusent])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [E_9_VIN]
	ADD CONSTRAINT [R_16] FOREIGN KEY ([Vinsmak]) REFERENCES [VINSMAK]([Vinsmak])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [MATTYPER_VIN]
	ADD CONSTRAINT [R_10] FOREIGN KEY ([Mattyper_til_vin]) REFERENCES [MATTYPER]([Mattyper_til_vin])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [MATTYPER_VIN]
	ADD CONSTRAINT [R_11] FOREIGN KEY ([Produktnavn],[Vinprodusent]) REFERENCES [VIN]([Produktnavn],[Vinprodusent])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [VIN]
	ADD CONSTRAINT [R_7] FOREIGN KEY ([Vinprodusent]) REFERENCES [PRODUSENT]([Vinprodusent])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE [≈RGANGSVIN]
	ADD CONSTRAINT [R_2] FOREIGN KEY ([Produktnavn],[Vinprodusent]) REFERENCES [VIN]([Produktnavn],[Vinprodusent])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [≈RGANGSVIN]
	ADD CONSTRAINT [R_3] FOREIGN KEY ([≈r]) REFERENCES [≈R]([≈r])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE [≈RGANGSVIN]
	ADD CONSTRAINT [R_4] FOREIGN KEY ([Poeng]) REFERENCES [VURDERING]([Poeng])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


CREATE TRIGGER tD_E_9_VIN ON E_9_VIN FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on E_9_VIN */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* VIN  E_9_VIN on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00026f7a", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="E_9_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="Produktnavn""Vinprodusent" */
    IF EXISTS (SELECT * FROM deleted,VIN
      WHERE
        /* %JoinFKPK(deleted,VIN," = "," AND") */
        deleted.Produktnavn = VIN.Produktnavn AND
        deleted.Vinprodusent = VIN.Vinprodusent AND
        NOT EXISTS (
          SELECT * FROM E_9_VIN
          WHERE
            /* %JoinFKPK(E_9_VIN,VIN," = "," AND") */
            E_9_VIN.Produktnavn = VIN.Produktnavn AND
            E_9_VIN.Vinprodusent = VIN.Vinprodusent
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last E_9_VIN because VIN exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* VINSMAK  E_9_VIN on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VINSMAK"
    CHILD_OWNER="", CHILD_TABLE="E_9_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="Vinsmak" */
    IF EXISTS (SELECT * FROM deleted,VINSMAK
      WHERE
        /* %JoinFKPK(deleted,VINSMAK," = "," AND") */
        deleted.Vinsmak = VINSMAK.Vinsmak AND
        NOT EXISTS (
          SELECT * FROM E_9_VIN
          WHERE
            /* %JoinFKPK(E_9_VIN,VINSMAK," = "," AND") */
            E_9_VIN.Vinsmak = VINSMAK.Vinsmak
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last E_9_VIN because VINSMAK exists.'
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


CREATE TRIGGER tU_E_9_VIN ON E_9_VIN FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on E_9_VIN */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insProduktnavn varchar(45), 
           @insVinprodusent varchar(45), 
           @insVinsmak varchar(45),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* VIN  E_9_VIN on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002c8b8", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="E_9_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="Produktnavn""Vinprodusent" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Produktnavn) OR
    UPDATE(Vinprodusent)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,VIN
        WHERE
          /* %JoinFKPK(inserted,VIN) */
          inserted.Produktnavn = VIN.Produktnavn and
          inserted.Vinprodusent = VIN.Vinprodusent
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update E_9_VIN because VIN does not exist.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* VINSMAK  E_9_VIN on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VINSMAK"
    CHILD_OWNER="", CHILD_TABLE="E_9_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="Vinsmak" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Vinsmak)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,VINSMAK
        WHERE
          /* %JoinFKPK(inserted,VINSMAK) */
          inserted.Vinsmak = VINSMAK.Vinsmak
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update E_9_VIN because VINSMAK does not exist.'
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




CREATE TRIGGER tD_MATTYPER ON MATTYPER FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on MATTYPER */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* MATTYPER  MATTYPER_VIN on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00011f76", PARENT_OWNER="", PARENT_TABLE="MATTYPER"
    CHILD_OWNER="", CHILD_TABLE="MATTYPER_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Mattyper_til_vin" */
    IF EXISTS (
      SELECT * FROM deleted,MATTYPER_VIN
      WHERE
        /*  %JoinFKPK(MATTYPER_VIN,deleted," = "," AND") */
        MATTYPER_VIN.Mattyper_til_vin = deleted.Mattyper_til_vin
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete MATTYPER because MATTYPER_VIN exists.'
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


CREATE TRIGGER tU_MATTYPER ON MATTYPER FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on MATTYPER */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insMattyper_til_vin varchar(45),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* MATTYPER  MATTYPER_VIN on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00013e6e", PARENT_OWNER="", PARENT_TABLE="MATTYPER"
    CHILD_OWNER="", CHILD_TABLE="MATTYPER_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Mattyper_til_vin" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Mattyper_til_vin)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,MATTYPER_VIN
      WHERE
        /*  %JoinFKPK(MATTYPER_VIN,deleted," = "," AND") */
        MATTYPER_VIN.Mattyper_til_vin = deleted.Mattyper_til_vin
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update MATTYPER because MATTYPER_VIN exists.'
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




CREATE TRIGGER tD_MATTYPER_VIN ON MATTYPER_VIN FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on MATTYPER_VIN */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* VIN  MATTYPER_VIN on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002b385", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="MATTYPER_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="Produktnavn""Vinprodusent" */
    IF EXISTS (SELECT * FROM deleted,VIN
      WHERE
        /* %JoinFKPK(deleted,VIN," = "," AND") */
        deleted.Produktnavn = VIN.Produktnavn AND
        deleted.Vinprodusent = VIN.Vinprodusent AND
        NOT EXISTS (
          SELECT * FROM MATTYPER_VIN
          WHERE
            /* %JoinFKPK(MATTYPER_VIN,VIN," = "," AND") */
            MATTYPER_VIN.Produktnavn = VIN.Produktnavn AND
            MATTYPER_VIN.Vinprodusent = VIN.Vinprodusent
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last MATTYPER_VIN because VIN exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* MATTYPER  MATTYPER_VIN on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MATTYPER"
    CHILD_OWNER="", CHILD_TABLE="MATTYPER_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Mattyper_til_vin" */
    IF EXISTS (SELECT * FROM deleted,MATTYPER
      WHERE
        /* %JoinFKPK(deleted,MATTYPER," = "," AND") */
        deleted.Mattyper_til_vin = MATTYPER.Mattyper_til_vin AND
        NOT EXISTS (
          SELECT * FROM MATTYPER_VIN
          WHERE
            /* %JoinFKPK(MATTYPER_VIN,MATTYPER," = "," AND") */
            MATTYPER_VIN.Mattyper_til_vin = MATTYPER.Mattyper_til_vin
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last MATTYPER_VIN because MATTYPER exists.'
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


CREATE TRIGGER tU_MATTYPER_VIN ON MATTYPER_VIN FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on MATTYPER_VIN */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insMattyper_til_vin varchar(45), 
           @insProduktnavn varchar(45), 
           @insVinprodusent varchar(45),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* VIN  MATTYPER_VIN on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002e128", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="MATTYPER_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="Produktnavn""Vinprodusent" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Produktnavn) OR
    UPDATE(Vinprodusent)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,VIN
        WHERE
          /* %JoinFKPK(inserted,VIN) */
          inserted.Produktnavn = VIN.Produktnavn and
          inserted.Vinprodusent = VIN.Vinprodusent
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update MATTYPER_VIN because VIN does not exist.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* MATTYPER  MATTYPER_VIN on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="MATTYPER"
    CHILD_OWNER="", CHILD_TABLE="MATTYPER_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Mattyper_til_vin" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Mattyper_til_vin)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,MATTYPER
        WHERE
          /* %JoinFKPK(inserted,MATTYPER) */
          inserted.Mattyper_til_vin = MATTYPER.Mattyper_til_vin
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update MATTYPER_VIN because MATTYPER does not exist.'
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




CREATE TRIGGER tD_PRODUSENT ON PRODUSENT FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on PRODUSENT */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* PRODUSENT  VIN on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00010604", PARENT_OWNER="", PARENT_TABLE="PRODUSENT"
    CHILD_OWNER="", CHILD_TABLE="VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="Vinprodusent" */
    IF EXISTS (
      SELECT * FROM deleted,VIN
      WHERE
        /*  %JoinFKPK(VIN,deleted," = "," AND") */
        VIN.Vinprodusent = deleted.Vinprodusent
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete PRODUSENT because VIN exists.'
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


CREATE TRIGGER tU_PRODUSENT ON PRODUSENT FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on PRODUSENT */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insVinprodusent varchar(45),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* PRODUSENT  VIN on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00011a0b", PARENT_OWNER="", PARENT_TABLE="PRODUSENT"
    CHILD_OWNER="", CHILD_TABLE="VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="Vinprodusent" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Vinprodusent)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,VIN
      WHERE
        /*  %JoinFKPK(VIN,deleted," = "," AND") */
        VIN.Vinprodusent = deleted.Vinprodusent
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update PRODUSENT because VIN exists.'
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




CREATE TRIGGER tD_VIN ON VIN FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on VIN */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* VIN  E_9_VIN on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0004530f", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="E_9_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="Produktnavn""Vinprodusent" */
    IF EXISTS (
      SELECT * FROM deleted,E_9_VIN
      WHERE
        /*  %JoinFKPK(E_9_VIN,deleted," = "," AND") */
        E_9_VIN.Produktnavn = deleted.Produktnavn AND
        E_9_VIN.Vinprodusent = deleted.Vinprodusent
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete VIN because E_9_VIN exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* VIN  MATTYPER_VIN on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="MATTYPER_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="Produktnavn""Vinprodusent" */
    IF EXISTS (
      SELECT * FROM deleted,MATTYPER_VIN
      WHERE
        /*  %JoinFKPK(MATTYPER_VIN,deleted," = "," AND") */
        MATTYPER_VIN.Produktnavn = deleted.Produktnavn AND
        MATTYPER_VIN.Vinprodusent = deleted.Vinprodusent
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete VIN because MATTYPER_VIN exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* VIN  ≈RGANGSVIN on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="Produktnavn""Vinprodusent" */
    IF EXISTS (
      SELECT * FROM deleted,≈RGANGSVIN
      WHERE
        /*  %JoinFKPK(≈RGANGSVIN,deleted," = "," AND") */
        ≈RGANGSVIN.Produktnavn = deleted.Produktnavn AND
        ≈RGANGSVIN.Vinprodusent = deleted.Vinprodusent
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete VIN because ≈RGANGSVIN exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* PRODUSENT  VIN on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PRODUSENT"
    CHILD_OWNER="", CHILD_TABLE="VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="Vinprodusent" */
    IF EXISTS (SELECT * FROM deleted,PRODUSENT
      WHERE
        /* %JoinFKPK(deleted,PRODUSENT," = "," AND") */
        deleted.Vinprodusent = PRODUSENT.Vinprodusent AND
        NOT EXISTS (
          SELECT * FROM VIN
          WHERE
            /* %JoinFKPK(VIN,PRODUSENT," = "," AND") */
            VIN.Vinprodusent = PRODUSENT.Vinprodusent
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last VIN because PRODUSENT exists.'
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


CREATE TRIGGER tU_VIN ON VIN FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on VIN */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insProduktnavn varchar(45), 
           @insVinprodusent varchar(45),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* VIN  E_9_VIN on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0004e8dc", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="E_9_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="Produktnavn""Vinprodusent" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Produktnavn) OR
    UPDATE(Vinprodusent)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,E_9_VIN
      WHERE
        /*  %JoinFKPK(E_9_VIN,deleted," = "," AND") */
        E_9_VIN.Produktnavn = deleted.Produktnavn AND
        E_9_VIN.Vinprodusent = deleted.Vinprodusent
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update VIN because E_9_VIN exists.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* VIN  MATTYPER_VIN on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="MATTYPER_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="Produktnavn""Vinprodusent" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Produktnavn) OR
    UPDATE(Vinprodusent)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,MATTYPER_VIN
      WHERE
        /*  %JoinFKPK(MATTYPER_VIN,deleted," = "," AND") */
        MATTYPER_VIN.Produktnavn = deleted.Produktnavn AND
        MATTYPER_VIN.Vinprodusent = deleted.Vinprodusent
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update VIN because MATTYPER_VIN exists.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* VIN  ≈RGANGSVIN on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="Produktnavn""Vinprodusent" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Produktnavn) OR
    UPDATE(Vinprodusent)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,≈RGANGSVIN
      WHERE
        /*  %JoinFKPK(≈RGANGSVIN,deleted," = "," AND") */
        ≈RGANGSVIN.Produktnavn = deleted.Produktnavn AND
        ≈RGANGSVIN.Vinprodusent = deleted.Vinprodusent
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update VIN because ≈RGANGSVIN exists.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* PRODUSENT  VIN on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="PRODUSENT"
    CHILD_OWNER="", CHILD_TABLE="VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="Vinprodusent" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Vinprodusent)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,PRODUSENT
        WHERE
          /* %JoinFKPK(inserted,PRODUSENT) */
          inserted.Vinprodusent = PRODUSENT.Vinprodusent
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update VIN because PRODUSENT does not exist.'
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




CREATE TRIGGER tD_VINSMAK ON VINSMAK FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on VINSMAK */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* VINSMAK  E_9_VIN on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00010b13", PARENT_OWNER="", PARENT_TABLE="VINSMAK"
    CHILD_OWNER="", CHILD_TABLE="E_9_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="Vinsmak" */
    IF EXISTS (
      SELECT * FROM deleted,E_9_VIN
      WHERE
        /*  %JoinFKPK(E_9_VIN,deleted," = "," AND") */
        E_9_VIN.Vinsmak = deleted.Vinsmak
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete VINSMAK because E_9_VIN exists.'
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


CREATE TRIGGER tU_VINSMAK ON VINSMAK FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on VINSMAK */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insVinsmak varchar(45),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* VINSMAK  E_9_VIN on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00012553", PARENT_OWNER="", PARENT_TABLE="VINSMAK"
    CHILD_OWNER="", CHILD_TABLE="E_9_VIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="Vinsmak" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Vinsmak)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,E_9_VIN
      WHERE
        /*  %JoinFKPK(E_9_VIN,deleted," = "," AND") */
        E_9_VIN.Vinsmak = deleted.Vinsmak
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update VINSMAK because E_9_VIN exists.'
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




CREATE TRIGGER tD_VURDERING ON VURDERING FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on VURDERING */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* VURDERING  ≈RGANGSVIN on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00011653", PARENT_OWNER="", PARENT_TABLE="VURDERING"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="Poeng" */
    IF EXISTS (
      SELECT * FROM deleted,≈RGANGSVIN
      WHERE
        /*  %JoinFKPK(≈RGANGSVIN,deleted," = "," AND") */
        ≈RGANGSVIN.Poeng = deleted.Poeng
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete VURDERING because ≈RGANGSVIN exists.'
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


CREATE TRIGGER tU_VURDERING ON VURDERING FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on VURDERING */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insPoeng int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* VURDERING  ≈RGANGSVIN on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00013388", PARENT_OWNER="", PARENT_TABLE="VURDERING"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="Poeng" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Poeng)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,≈RGANGSVIN
      WHERE
        /*  %JoinFKPK(≈RGANGSVIN,deleted," = "," AND") */
        ≈RGANGSVIN.Poeng = deleted.Poeng
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update VURDERING because ≈RGANGSVIN exists.'
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




CREATE TRIGGER tD_≈R ON ≈R FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on ≈R */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* ≈R  ≈RGANGSVIN on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001026b", PARENT_OWNER="", PARENT_TABLE="≈R"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="≈r" */
    IF EXISTS (
      SELECT * FROM deleted,≈RGANGSVIN
      WHERE
        /*  %JoinFKPK(≈RGANGSVIN,deleted," = "," AND") */
        ≈RGANGSVIN.≈r = deleted.≈r
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ≈R because ≈RGANGSVIN exists.'
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


CREATE TRIGGER tU_≈R ON ≈R FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ≈R */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins≈r int,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* ≈R  ≈RGANGSVIN on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00010cd9", PARENT_OWNER="", PARENT_TABLE="≈R"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="≈r" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(≈r)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,≈RGANGSVIN
      WHERE
        /*  %JoinFKPK(≈RGANGSVIN,deleted," = "," AND") */
        ≈RGANGSVIN.≈r = deleted.≈r
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ≈R because ≈RGANGSVIN exists.'
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




CREATE TRIGGER tD_≈RGANGSVIN ON ≈RGANGSVIN FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on ≈RGANGSVIN */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* VURDERING  ≈RGANGSVIN on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00038f59", PARENT_OWNER="", PARENT_TABLE="VURDERING"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="Poeng" */
    IF EXISTS (SELECT * FROM deleted,VURDERING
      WHERE
        /* %JoinFKPK(deleted,VURDERING," = "," AND") */
        deleted.Poeng = VURDERING.Poeng AND
        NOT EXISTS (
          SELECT * FROM ≈RGANGSVIN
          WHERE
            /* %JoinFKPK(≈RGANGSVIN,VURDERING," = "," AND") */
            ≈RGANGSVIN.Poeng = VURDERING.Poeng
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ≈RGANGSVIN because VURDERING exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* ≈R  ≈RGANGSVIN on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="≈R"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="≈r" */
    IF EXISTS (SELECT * FROM deleted,≈R
      WHERE
        /* %JoinFKPK(deleted,≈R," = "," AND") */
        deleted.≈r = ≈R.≈r AND
        NOT EXISTS (
          SELECT * FROM ≈RGANGSVIN
          WHERE
            /* %JoinFKPK(≈RGANGSVIN,≈R," = "," AND") */
            ≈RGANGSVIN.≈r = ≈R.≈r
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ≈RGANGSVIN because ≈R exists.'
      GOTO error
    END

    /* ERwin Builtin Trigger */
    /* VIN  ≈RGANGSVIN on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="Produktnavn""Vinprodusent" */
    IF EXISTS (SELECT * FROM deleted,VIN
      WHERE
        /* %JoinFKPK(deleted,VIN," = "," AND") */
        deleted.Produktnavn = VIN.Produktnavn AND
        deleted.Vinprodusent = VIN.Vinprodusent AND
        NOT EXISTS (
          SELECT * FROM ≈RGANGSVIN
          WHERE
            /* %JoinFKPK(≈RGANGSVIN,VIN," = "," AND") */
            ≈RGANGSVIN.Produktnavn = VIN.Produktnavn AND
            ≈RGANGSVIN.Vinprodusent = VIN.Vinprodusent
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ≈RGANGSVIN because VIN exists.'
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


CREATE TRIGGER tU_≈RGANGSVIN ON ≈RGANGSVIN FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ≈RGANGSVIN */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins≈r int, 
           @insProduktnavn varchar(45), 
           @insVinprodusent varchar(45),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* ERwin Builtin Trigger */
  /* VURDERING  ≈RGANGSVIN on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00041040", PARENT_OWNER="", PARENT_TABLE="VURDERING"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="Poeng" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Poeng)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,VURDERING
        WHERE
          /* %JoinFKPK(inserted,VURDERING) */
          inserted.Poeng = VURDERING.Poeng
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Poeng IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ≈RGANGSVIN because VURDERING does not exist.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* ≈R  ≈RGANGSVIN on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="≈R"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="≈r" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(≈r)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,≈R
        WHERE
          /* %JoinFKPK(inserted,≈R) */
          inserted.≈r = ≈R.≈r
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ≈RGANGSVIN because ≈R does not exist.'
      GOTO error
    END
  END

  /* ERwin Builtin Trigger */
  /* VIN  ≈RGANGSVIN on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="VIN"
    CHILD_OWNER="", CHILD_TABLE="≈RGANGSVIN"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="Produktnavn""Vinprodusent" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Produktnavn) OR
    UPDATE(Vinprodusent)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,VIN
        WHERE
          /* %JoinFKPK(inserted,VIN) */
          inserted.Produktnavn = VIN.Produktnavn and
          inserted.Vinprodusent = VIN.Vinprodusent
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ≈RGANGSVIN because VIN does not exist.'
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


