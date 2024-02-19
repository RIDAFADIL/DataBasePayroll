﻿CREATE TABLE [dbo].[ENTREPRISE] (
  [N_ENTRE] [char](32) NOT NULL,
  [RAISON_SOCIALE__ENTRE] [char](32) NOT NULL,
  [ADRESSE_ENTRE] [char](32) NOT NULL,
  [TEL_ENTRE] [smallint] NULL,
  CONSTRAINT [PK_ENTREPRISE] PRIMARY KEY CLUSTERED ([N_ENTRE])
)
ON [PRIMARY]
GO