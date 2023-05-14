
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/13/2023 00:56:12
-- Generated from EDMX file: D:\DACS\WebsiteDatSan\WebsiteDatSan\Models\CauLong.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [WebsiteDatSanCauLong];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__ChiTiet_D__MaDat__2B3F6F97]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ChiTiet_DatSan] DROP CONSTRAINT [FK__ChiTiet_D__MaDat__2B3F6F97];
GO
IF OBJECT_ID(N'[dbo].[FK__ChiTiet_D__MaSan__2A4B4B5E]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ChiTiet_DatSan] DROP CONSTRAINT [FK__ChiTiet_D__MaSan__2A4B4B5E];
GO
IF OBJECT_ID(N'[dbo].[FK__San__MaLoaiSan__2C3393D0]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[San] DROP CONSTRAINT [FK__San__MaLoaiSan__2C3393D0];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AspNetRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserClaims]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserClaims];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserLogins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserLogins];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[ChiTiet_DatSan]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ChiTiet_DatSan];
GO
IF OBJECT_ID(N'[dbo].[DatSan]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DatSan];
GO
IF OBJECT_ID(N'[dbo].[LoaiSan]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LoaiSan];
GO
IF OBJECT_ID(N'[dbo].[San]', 'U') IS NOT NULL
    DROP TABLE [dbo].[San];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AspNetRoles'
CREATE TABLE [dbo].[AspNetRoles] (
    [Id] nvarchar(128)  NOT NULL,
    [Name] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'AspNetUserClaims'
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] nvarchar(128)  NOT NULL,
    [ClaimType] nvarchar(max)  NULL,
    [ClaimValue] nvarchar(max)  NULL
);
GO

-- Creating table 'AspNetUserLogins'
CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider] nvarchar(128)  NOT NULL,
    [ProviderKey] nvarchar(128)  NOT NULL,
    [UserId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [Email] nvarchar(256)  NULL,
    [EmailConfirmed] bit  NOT NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [PhoneNumber] nvarchar(max)  NULL,
    [PhoneNumberConfirmed] bit  NOT NULL,
    [TwoFactorEnabled] bit  NOT NULL,
    [LockoutEndDateUtc] datetime  NULL,
    [LockoutEnabled] bit  NOT NULL,
    [AccessFailedCount] int  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL,
    [Address] nvarchar(256)  NULL
);
GO

-- Creating table 'ChiTiet_DatSan'
CREATE TABLE [dbo].[ChiTiet_DatSan] (
    [MaSan] int  NOT NULL,
    [MaDat] int  NOT NULL,
    [TongTien] float  NULL
);
GO

-- Creating table 'DatSan'
CREATE TABLE [dbo].[DatSan] (
    [MaDat] int IDENTITY(1,1) NOT NULL,
    [NgayDat] datetime  NULL,
    [SoTien] float  NULL
);
GO

-- Creating table 'LoaiSan'
CREATE TABLE [dbo].[LoaiSan] (
    [MaLoaiSan] int IDENTITY(1,1) NOT NULL,
    [TenLoaiSan] nvarchar(50)  NULL
);
GO

-- Creating table 'San'
CREATE TABLE [dbo].[San] (
    [MaSan] int IDENTITY(1,1) NOT NULL,
    [MaLoaiSan] int  NOT NULL,
    [TenSan] nvarchar(50)  NULL,
    [DIaChi] nvarchar(150)  NULL,
    [GIaTien] decimal(19,4)  NULL,
    [TrangThai] bit  NULL,
    [HinhAnh] nvarchar(100)  NULL
);
GO

-- Creating table 'AspNetUserRoles'
CREATE TABLE [dbo].[AspNetUserRoles] (
    [AspNetRoles_Id] nvarchar(128)  NOT NULL,
    [AspNetUsers_Id] nvarchar(128)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [LoginProvider], [ProviderKey], [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [MaSan], [MaDat] in table 'ChiTiet_DatSan'
ALTER TABLE [dbo].[ChiTiet_DatSan]
ADD CONSTRAINT [PK_ChiTiet_DatSan]
    PRIMARY KEY CLUSTERED ([MaSan], [MaDat] ASC);
GO

-- Creating primary key on [MaDat] in table 'DatSan'
ALTER TABLE [dbo].[DatSan]
ADD CONSTRAINT [PK_DatSan]
    PRIMARY KEY CLUSTERED ([MaDat] ASC);
GO

-- Creating primary key on [MaLoaiSan] in table 'LoaiSan'
ALTER TABLE [dbo].[LoaiSan]
ADD CONSTRAINT [PK_LoaiSan]
    PRIMARY KEY CLUSTERED ([MaLoaiSan] ASC);
GO

-- Creating primary key on [MaSan] in table 'San'
ALTER TABLE [dbo].[San]
ADD CONSTRAINT [PK_San]
    PRIMARY KEY CLUSTERED ([MaSan] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_AspNetUserRoles]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserId] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserClaims]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserLogins]
    ([UserId]);
GO

-- Creating foreign key on [MaDat] in table 'ChiTiet_DatSan'
ALTER TABLE [dbo].[ChiTiet_DatSan]
ADD CONSTRAINT [FK__ChiTiet_D__MaDat__2B3F6F97]
    FOREIGN KEY ([MaDat])
    REFERENCES [dbo].[DatSan]
        ([MaDat])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__ChiTiet_D__MaDat__2B3F6F97'
CREATE INDEX [IX_FK__ChiTiet_D__MaDat__2B3F6F97]
ON [dbo].[ChiTiet_DatSan]
    ([MaDat]);
GO

-- Creating foreign key on [MaSan] in table 'ChiTiet_DatSan'
ALTER TABLE [dbo].[ChiTiet_DatSan]
ADD CONSTRAINT [FK__ChiTiet_D__MaSan__2A4B4B5E]
    FOREIGN KEY ([MaSan])
    REFERENCES [dbo].[San]
        ([MaSan])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MaLoaiSan] in table 'San'
ALTER TABLE [dbo].[San]
ADD CONSTRAINT [FK__San__MaLoaiSan__2C3393D0]
    FOREIGN KEY ([MaLoaiSan])
    REFERENCES [dbo].[LoaiSan]
        ([MaLoaiSan])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__San__MaLoaiSan__2C3393D0'
CREATE INDEX [IX_FK__San__MaLoaiSan__2C3393D0]
ON [dbo].[San]
    ([MaLoaiSan]);
GO

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles_AspNetUsers'
CREATE INDEX [IX_FK_AspNetUserRoles_AspNetUsers]
ON [dbo].[AspNetUserRoles]
    ([AspNetUsers_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------