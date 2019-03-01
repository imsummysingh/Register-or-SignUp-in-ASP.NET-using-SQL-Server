CREATE TABLE [dbo].[Register] (
    [UserId]    INT           IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (50) NULL,
    [LastName]  NVARCHAR (50) NULL,
    [Contact]   NVARCHAR (50) NULL,
    [Gender]    NVARCHAR (10) NULL,
    [Address]   NVARCHAR (50) NULL,
    [UserName]  NVARCHAR (50) NULL,
    [Password]  NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC)
);

