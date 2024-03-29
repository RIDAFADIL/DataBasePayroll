﻿CREATE TABLE [dbo].[SA] (
  [MATRICULE_SRL] [smallint] NOT NULL,
  [CODE_AVG] [char](32) NOT NULL,
  CONSTRAINT [PK_SA] PRIMARY KEY CLUSTERED ([MATRICULE_SRL], [CODE_AVG])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SA]
  ADD CONSTRAINT [FK_SA_AVANTAGE] FOREIGN KEY ([CODE_AVG]) REFERENCES [dbo].[AVANTAGE] ([CODE_AVG])
GO

ALTER TABLE [dbo].[SA]
  ADD CONSTRAINT [FK_SA_SALARIE] FOREIGN KEY ([MATRICULE_SRL]) REFERENCES [dbo].[SALARIE] ([MATRICULE_SRL])
GO