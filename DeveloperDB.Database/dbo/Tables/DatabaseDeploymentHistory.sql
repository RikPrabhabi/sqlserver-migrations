CREATE TABLE [dbo].[DatabaseDeploymentHistory] (
    [ID]                  INT            IDENTITY (1, 1) NOT NULL,
    [ScriptVersion]       NVARCHAR (50)  NOT NULL,
    [ScriptName]          NVARCHAR (255) NOT NULL,
    [AppliedOn]           DATETIME       DEFAULT (getdate()) NOT NULL,
    [AppliedBy]           NVARCHAR (100) DEFAULT (suser_sname()) NOT NULL,
    [ExecutionStatus]     NVARCHAR (10)  NOT NULL,
    [ErrorMessage]        NVARCHAR (MAX) NULL,
    [ExecutionTimeMs]     INT            NULL,
    [DeployedFromMachine] NVARCHAR (100) NULL,
    CONSTRAINT [PK_DatabaseDeploymentHistory] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [UQ_DatabaseDeploymentHistory_ScriptName] UNIQUE NONCLUSTERED ([ScriptName] ASC)
);

