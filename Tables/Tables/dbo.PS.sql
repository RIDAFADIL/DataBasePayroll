﻿CREATE TABLE [dbo].[PS] (
  [MATRICULE_SRL] [smallint] NOT NULL,
  [CODE_PRM] [char](32) NOT NULL,
  [MATRICULE_SRL_1] [smallint] NOT NULL,
  [CODE_PRET] [char](32) NOT NULL,
  CONSTRAINT [PK_PS] PRIMARY KEY CLUSTERED ([MATRICULE_SRL], [CODE_PRM], [MATRICULE_SRL_1], [CODE_PRET])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PS]
  ADD CONSTRAINT [FK_PS_PRET] FOREIGN KEY ([CODE_PRET]) REFERENCES [dbo].[PRET] ([CODE_PRET])
GO

ALTER TABLE [dbo].[PS]
  ADD CONSTRAINT [FK_PS_PRIME] FOREIGN KEY ([CODE_PRM]) REFERENCES [dbo].[PRIME] ([CODE_PRM])
GO

ALTER TABLE [dbo].[PS]
  ADD CONSTRAINT [FK_PS_SALARIE] FOREIGN KEY ([MATRICULE_SRL]) REFERENCES [dbo].[SALARIE] ([MATRICULE_SRL])
GO

ALTER TABLE [dbo].[PS]
  ADD CONSTRAINT [FK_PS_SALARIE1] FOREIGN KEY ([MATRICULE_SRL_1]) REFERENCES [dbo].[SALARIE] ([MATRICULE_SRL])
GO