
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/22/2016 21:58:37
-- Generated from EDMX file: C:\Users\Namrata Satapathy\Documents\Visual Studio 2013\Projects\SchoolManagement\SchoolManagement\Models\SchoolModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SchoolManagement];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_InstitutionDepartment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DepartmentSet] DROP CONSTRAINT [FK_InstitutionDepartment];
GO
IF OBJECT_ID(N'[dbo].[FK_InstitutionHostel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HostelSet] DROP CONSTRAINT [FK_InstitutionHostel];
GO
IF OBJECT_ID(N'[dbo].[FK_SM_ClassSection]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SectionSet] DROP CONSTRAINT [FK_SM_ClassSection];
GO
IF OBJECT_ID(N'[dbo].[FK_BoardBatch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BatchSet] DROP CONSTRAINT [FK_BoardBatch];
GO
IF OBJECT_ID(N'[dbo].[FK_BatchSM_Class]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SM_ClassSet] DROP CONSTRAINT [FK_BatchSM_Class];
GO
IF OBJECT_ID(N'[dbo].[FK_InstitutionBoard]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BoardSet] DROP CONSTRAINT [FK_InstitutionBoard];
GO
IF OBJECT_ID(N'[dbo].[FK_SM_ClassSubject]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SubjectSet] DROP CONSTRAINT [FK_SM_ClassSubject];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[InstitutionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InstitutionSet];
GO
IF OBJECT_ID(N'[dbo].[BoardSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BoardSet];
GO
IF OBJECT_ID(N'[dbo].[SectionSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SectionSet];
GO
IF OBJECT_ID(N'[dbo].[DepartmentSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DepartmentSet];
GO
IF OBJECT_ID(N'[dbo].[HostelSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HostelSet];
GO
IF OBJECT_ID(N'[dbo].[SM_ClassSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SM_ClassSet];
GO
IF OBJECT_ID(N'[dbo].[SubjectSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SubjectSet];
GO
IF OBJECT_ID(N'[dbo].[BatchSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BatchSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'InstitutionSet'
CREATE TABLE [dbo].[InstitutionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [web_address] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Contact_number] nvarchar(max)  NOT NULL,
    [State] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [PostalCode] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BoardSet'
CREATE TABLE [dbo].[BoardSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [InstitutionId] int  NOT NULL
);
GO

-- Creating table 'SectionSet'
CREATE TABLE [dbo].[SectionSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [SM_ClassId] int  NOT NULL
);
GO

-- Creating table 'DepartmentSet'
CREATE TABLE [dbo].[DepartmentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [InstitutionId] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [HOD] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'HostelSet'
CREATE TABLE [dbo].[HostelSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [InstitutionId] int  NOT NULL,
    [Superintendent] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SM_ClassSet'
CREATE TABLE [dbo].[SM_ClassSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [BoardId] int  NOT NULL,
    [BatchId] int  NOT NULL
);
GO

-- Creating table 'SubjectSet'
CREATE TABLE [dbo].[SubjectSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [SM_ClassId] int  NOT NULL
);
GO

-- Creating table 'BatchSet'
CREATE TABLE [dbo].[BatchSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [BoardId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'InstitutionSet'
ALTER TABLE [dbo].[InstitutionSet]
ADD CONSTRAINT [PK_InstitutionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BoardSet'
ALTER TABLE [dbo].[BoardSet]
ADD CONSTRAINT [PK_BoardSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SectionSet'
ALTER TABLE [dbo].[SectionSet]
ADD CONSTRAINT [PK_SectionSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DepartmentSet'
ALTER TABLE [dbo].[DepartmentSet]
ADD CONSTRAINT [PK_DepartmentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'HostelSet'
ALTER TABLE [dbo].[HostelSet]
ADD CONSTRAINT [PK_HostelSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SM_ClassSet'
ALTER TABLE [dbo].[SM_ClassSet]
ADD CONSTRAINT [PK_SM_ClassSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SubjectSet'
ALTER TABLE [dbo].[SubjectSet]
ADD CONSTRAINT [PK_SubjectSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BatchSet'
ALTER TABLE [dbo].[BatchSet]
ADD CONSTRAINT [PK_BatchSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [InstitutionId] in table 'DepartmentSet'
ALTER TABLE [dbo].[DepartmentSet]
ADD CONSTRAINT [FK_InstitutionDepartment]
    FOREIGN KEY ([InstitutionId])
    REFERENCES [dbo].[InstitutionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InstitutionDepartment'
CREATE INDEX [IX_FK_InstitutionDepartment]
ON [dbo].[DepartmentSet]
    ([InstitutionId]);
GO

-- Creating foreign key on [InstitutionId] in table 'HostelSet'
ALTER TABLE [dbo].[HostelSet]
ADD CONSTRAINT [FK_InstitutionHostel]
    FOREIGN KEY ([InstitutionId])
    REFERENCES [dbo].[InstitutionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InstitutionHostel'
CREATE INDEX [IX_FK_InstitutionHostel]
ON [dbo].[HostelSet]
    ([InstitutionId]);
GO

-- Creating foreign key on [SM_ClassId] in table 'SectionSet'
ALTER TABLE [dbo].[SectionSet]
ADD CONSTRAINT [FK_SM_ClassSection]
    FOREIGN KEY ([SM_ClassId])
    REFERENCES [dbo].[SM_ClassSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SM_ClassSection'
CREATE INDEX [IX_FK_SM_ClassSection]
ON [dbo].[SectionSet]
    ([SM_ClassId]);
GO

-- Creating foreign key on [BoardId] in table 'BatchSet'
ALTER TABLE [dbo].[BatchSet]
ADD CONSTRAINT [FK_BoardBatch]
    FOREIGN KEY ([BoardId])
    REFERENCES [dbo].[BoardSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BoardBatch'
CREATE INDEX [IX_FK_BoardBatch]
ON [dbo].[BatchSet]
    ([BoardId]);
GO

-- Creating foreign key on [BatchId] in table 'SM_ClassSet'
ALTER TABLE [dbo].[SM_ClassSet]
ADD CONSTRAINT [FK_BatchSM_Class]
    FOREIGN KEY ([BatchId])
    REFERENCES [dbo].[BatchSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BatchSM_Class'
CREATE INDEX [IX_FK_BatchSM_Class]
ON [dbo].[SM_ClassSet]
    ([BatchId]);
GO

-- Creating foreign key on [InstitutionId] in table 'BoardSet'
ALTER TABLE [dbo].[BoardSet]
ADD CONSTRAINT [FK_InstitutionBoard]
    FOREIGN KEY ([InstitutionId])
    REFERENCES [dbo].[InstitutionSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InstitutionBoard'
CREATE INDEX [IX_FK_InstitutionBoard]
ON [dbo].[BoardSet]
    ([InstitutionId]);
GO

-- Creating foreign key on [SM_ClassId] in table 'SubjectSet'
ALTER TABLE [dbo].[SubjectSet]
ADD CONSTRAINT [FK_SM_ClassSubject]
    FOREIGN KEY ([SM_ClassId])
    REFERENCES [dbo].[SM_ClassSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SM_ClassSubject'
CREATE INDEX [IX_FK_SM_ClassSubject]
ON [dbo].[SubjectSet]
    ([SM_ClassId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------