CREATE TABLE [dbo].[Dog] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (55)  NOT NULL,
    [OwnerId]  INT            NULL,
    [Breed]    VARCHAR (55)  NOT NULL,
    [Notes]    VARCHAR (255) NULL,
    [ImageUrl] VARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Dog_Owner] FOREIGN KEY ([OwnerId]) REFERENCES [dbo].[Owner] ([Id]) ON DELETE CASCADE
);

