USE [master]
GO
/****** Object:  Database [ConsultorChaquenio]    Script Date: 3/9/2021 00:05:32 ******/
CREATE DATABASE [ConsultorChaquenio]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ConsultorChaquenio', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ConsultorChaquenio.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ConsultorChaquenio_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ConsultorChaquenio_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ConsultorChaquenio] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ConsultorChaquenio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ConsultorChaquenio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET ARITHABORT OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ConsultorChaquenio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ConsultorChaquenio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ConsultorChaquenio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ConsultorChaquenio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ConsultorChaquenio] SET  MULTI_USER 
GO
ALTER DATABASE [ConsultorChaquenio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ConsultorChaquenio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ConsultorChaquenio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ConsultorChaquenio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ConsultorChaquenio] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ConsultorChaquenio] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ConsultorChaquenio] SET QUERY_STORE = OFF
GO
USE [ConsultorChaquenio]
GO
/****** Object:  Table [dbo].[auth_group]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_group_permissions]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_permission]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[content_type_id] [int] NOT NULL,
	[codename] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorias_categoria]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias_categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_admin_log]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_admin_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action_time] [datetime2](7) NOT NULL,
	[object_id] [nvarchar](max) NULL,
	[object_repr] [nvarchar](200) NOT NULL,
	[action_flag] [smallint] NOT NULL,
	[change_message] [nvarchar](max) NOT NULL,
	[content_type_id] [int] NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_content_type]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_content_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_label] [nvarchar](100) NOT NULL,
	[model] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_migrations]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[applied] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_session]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_session](
	[session_key] [nvarchar](40) NOT NULL,
	[session_data] [nvarchar](max) NOT NULL,
	[expire_date] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[juego_funcionamiento]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[juego_funcionamiento](
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[preguntas_pregunta]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[preguntas_pregunta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[enunciado] [nvarchar](max) NOT NULL,
	[categoria_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[respuestas_respuesta]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[respuestas_respuesta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[respuestas] [nvarchar](max) NOT NULL,
	[respuesta_correcta] [bit] NOT NULL,
	[pregunta_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_usuario]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](128) NOT NULL,
	[last_login] [datetime2](7) NULL,
	[is_superuser] [bit] NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[first_name] [nvarchar](30) NOT NULL,
	[last_name] [nvarchar](150) NOT NULL,
	[email] [nvarchar](254) NOT NULL,
	[is_staff] [bit] NOT NULL,
	[is_active] [bit] NOT NULL,
	[date_joined] [datetime2](7) NOT NULL,
	[localidad] [nvarchar](50) NULL,
	[puntaje_total] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_usuario_groups]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_usuario_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios_usuario_user_permissions]    Script Date: 3/9/2021 00:05:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios_usuario_user_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[auth_permission] ON 

INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (1, N'Can add log entry', 1, N'add_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (2, N'Can change log entry', 1, N'change_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (3, N'Can delete log entry', 1, N'delete_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (4, N'Can view log entry', 1, N'view_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (5, N'Can add permission', 2, N'add_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (6, N'Can change permission', 2, N'change_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (7, N'Can delete permission', 2, N'delete_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (8, N'Can view permission', 2, N'view_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (9, N'Can add group', 3, N'add_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (10, N'Can change group', 3, N'change_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (11, N'Can delete group', 3, N'delete_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (12, N'Can view group', 3, N'view_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (13, N'Can add content type', 4, N'add_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (14, N'Can change content type', 4, N'change_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (15, N'Can delete content type', 4, N'delete_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (16, N'Can view content type', 4, N'view_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (17, N'Can add session', 5, N'add_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (18, N'Can change session', 5, N'change_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (19, N'Can delete session', 5, N'delete_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (20, N'Can view session', 5, N'view_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (21, N'Can add user', 6, N'add_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (22, N'Can change user', 6, N'change_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (23, N'Can delete user', 6, N'delete_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (24, N'Can view user', 6, N'view_usuario')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (25, N'Can add categoria', 7, N'add_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (26, N'Can change categoria', 7, N'change_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (27, N'Can delete categoria', 7, N'delete_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (28, N'Can view categoria', 7, N'view_categoria')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (29, N'Can add pregunta', 8, N'add_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (30, N'Can change pregunta', 8, N'change_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (31, N'Can delete pregunta', 8, N'delete_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (32, N'Can view pregunta', 8, N'view_pregunta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (33, N'Can add respuesta', 9, N'add_respuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (34, N'Can change respuesta', 9, N'change_respuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (35, N'Can delete respuesta', 9, N'delete_respuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (36, N'Can view respuesta', 9, N'view_respuesta')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (37, N'Can add funcionamiento', 10, N'add_funcionamiento')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (38, N'Can change funcionamiento', 10, N'change_funcionamiento')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (39, N'Can delete funcionamiento', 10, N'delete_funcionamiento')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (40, N'Can view funcionamiento', 10, N'view_funcionamiento')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (41, N'Can add ranking', 11, N'add_ranking')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (42, N'Can change ranking', 11, N'change_ranking')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (43, N'Can delete ranking', 11, N'delete_ranking')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (44, N'Can view ranking', 11, N'view_ranking')
SET IDENTITY_INSERT [dbo].[auth_permission] OFF
GO
SET IDENTITY_INSERT [dbo].[categorias_categoria] ON 

INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (1, N'Cultura y arte')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (2, N'Historia')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (3, N'Deporte')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (4, N'Geografía')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (5, N'Economía')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (6, N'Ciencia y Educación')
INSERT [dbo].[categorias_categoria] ([id], [categoria]) VALUES (7, N'Entretenimiento')
SET IDENTITY_INSERT [dbo].[categorias_categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[django_content_type] ON 

INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (1, N'admin', N'logentry')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (3, N'auth', N'group')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (2, N'auth', N'permission')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (7, N'categorias', N'categoria')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (4, N'contenttypes', N'contenttype')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (10, N'juego', N'funcionamiento')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (8, N'preguntas', N'pregunta')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (11, N'ranking', N'ranking')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (9, N'respuestas', N'respuesta')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (5, N'sessions', N'session')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (6, N'usuarios', N'usuario')
SET IDENTITY_INSERT [dbo].[django_content_type] OFF
GO
SET IDENTITY_INSERT [dbo].[django_migrations] ON 

INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (1, N'contenttypes', N'0001_initial', CAST(N'2021-09-03T03:03:21.1950770' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (2, N'contenttypes', N'0002_remove_content_type_name', CAST(N'2021-09-03T03:03:22.3682160' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (3, N'auth', N'0001_initial', CAST(N'2021-09-03T03:03:22.4288980' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (4, N'auth', N'0002_alter_permission_name_max_length', CAST(N'2021-09-03T03:03:22.5222220' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (5, N'auth', N'0003_alter_user_email_max_length', CAST(N'2021-09-03T03:03:22.5464830' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (6, N'auth', N'0004_alter_user_username_opts', CAST(N'2021-09-03T03:03:22.5708730' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (7, N'auth', N'0005_alter_user_last_login_null', CAST(N'2021-09-03T03:03:22.5965070' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (8, N'auth', N'0006_require_contenttypes_0002', CAST(N'2021-09-03T03:03:22.6098860' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (9, N'auth', N'0007_alter_validators_add_error_messages', CAST(N'2021-09-03T03:03:22.6349360' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (10, N'auth', N'0008_alter_user_username_max_length', CAST(N'2021-09-03T03:03:22.6590240' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (11, N'auth', N'0009_alter_user_last_name_max_length', CAST(N'2021-09-03T03:03:22.6836180' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (12, N'auth', N'0010_alter_group_name_max_length', CAST(N'2021-09-03T03:03:23.7845480' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (13, N'auth', N'0011_update_proxy_permissions', CAST(N'2021-09-03T03:03:23.8109810' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (14, N'usuarios', N'0001_initial', CAST(N'2021-09-03T03:03:23.8589610' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (15, N'admin', N'0001_initial', CAST(N'2021-09-03T03:03:23.9416460' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (16, N'admin', N'0002_logentry_remove_auto_add', CAST(N'2021-09-03T03:03:23.9911790' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (17, N'admin', N'0003_logentry_add_action_flag_choices', CAST(N'2021-09-03T03:03:24.0229400' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (18, N'categorias', N'0001_initial', CAST(N'2021-09-03T03:03:24.0448630' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (19, N'juego', N'0001_initial', CAST(N'2021-09-03T03:03:24.0698600' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (20, N'preguntas', N'0001_initial', CAST(N'2021-09-03T03:03:24.1060110' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (21, N'respuestas', N'0001_initial', CAST(N'2021-09-03T03:03:24.1411970' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (22, N'sessions', N'0001_initial', CAST(N'2021-09-03T03:03:24.1717800' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (23, N'respuestas', N'0001_initial', CAST(N'2021-09-01T19:49:56.6966740' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (24, N'sessions', N'0001_initial', CAST(N'2021-09-01T19:49:56.7280310' AS DateTime2))
SET IDENTITY_INSERT [dbo].[django_migrations] OFF
GO
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'rh1pg1cc48k89w9z2j98f7uszrf5dc2e', N'NTM5MGU3NGFjYjA3NWMyMmU0YTRmN2Y5ZTczZGU1OWI0ZWQ3NTBmYTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTUzZWM5NmM3MWQ4Mzg0YWQyZWFlZjI1N2ZhYTgzZDA1ZTE1M2ZjYiJ9', CAST(N'2021-09-16T23:40:15.7574320' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[preguntas_pregunta] ON 

INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (1, N'Resistencia es conocida como:', 1)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (2, N'¿Cuántas esculturas hay en Resistencia?', 1)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (3, N'En la bandera del Chaco hay un arado rodeado de 25 estrellas ¿Qué representan?', 1)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (4, N'En un emblemático edificio de la ciudad de Resistencia se encuentra un mural del reconocido pintor Emilio Pettoruti ¿Dónde se encuentra emplazado?', 1)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (5, N'La Fiesta Nacional del Algodón se desarrolla en:', 1)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (6, N'La palabra Chacú del cual deriva el nombre de nuestra provincia, tenía un significado ¿Cuál era?', 2)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (7, N'¿Quién fue el primer gobernador del Territorio Nacional del Chaco?', 2)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (8, N'El Puente General Belgrano que une las provincias de Chaco y Corrientes se terminó de construir en:', 2)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (9, N'Desde cuándo existe la Provincia del Chaco:', 2)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (10, N'La primera ciudad colonial del Chaco fue:', 2)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (11, N'En el ámbito automovilístico deportivo Chaco tiene un exponente a nivel nacional e internacional, ¿Quién es?', 3)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (12, N'En el ámbito de los juegos olímpicos, el Chaco tiene un medallista en:', 3)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (13, N'Marcela Gómez, chaqueña, participó en los Juegos Olímpicos de Tokio en:', 3)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (14, N'El club de fútbol más antiguo del Chaco es:', 3)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (15, N'La ciudad de las Breñas logró jugar en el Campeonato Argentino de Clubes en:', 3)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (16, N'¿En qué sectores se divide geográficamente la provincia del Chaco?', 4)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (17, N'Al norte el límite natural establecido entre la Provincia de Chaco y Formosa es:', 4)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (18, N'La superficie total de la provincia del Chaco es de:', 4)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (19, N'¿Cuántos departamentos tiene la provincia del Chaco?', 4)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (20, N'¿Cuántas rutas nacionales recorren la provincia?', 4)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (21, N'La producción destacada chaqueña que perdura en la memoria y por la cual se la reconoce a la provincia fue:', 5)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (22, N'A inicios del siglo XX, la actividad económica más importante del territorio era:', 5)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (23, N'El tanino se desarrolló en:', 5)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (24, N'Una de las localidades algodoneras fue:', 5)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (25, N'Una de las Reservas Naturales del Chaco es:', 5)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (26, N'La población actual del Chaco oscila entre:', 6)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (27, N'Un escritor reconocido en el ámbito chaqueño recibió el Premio Pionero de la Letras Chaqueñas, otorgado por la provincia del Chaco y la SADE local en 1985. ¿Quién fue?', 6)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (28, N'¿Cuál es la flor provincial del Chaco?', 6)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (29, N'La ley 1532 divido a la Gobernación del Chaco en:', 6)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (30, N'¿Qué Parques Nacionales existen en el Chaco?', 6)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (31, N'Por Decreto N° 1491 el Gobierno de la Provincia del Chaco se declaró a un instrumento musical como “Patrimonio Cultural de la provincia del Chaco”, ¿Cuál es?', 7)
INSERT [dbo].[preguntas_pregunta] ([id], [enunciado], [categoria_id]) VALUES (32, N'Un conjunto coral chaqueño fue reconocido como “Patrimonio Cultural Viviente” ¿Cuál es?', 7)
SET IDENTITY_INSERT [dbo].[preguntas_pregunta] OFF
GO
SET IDENTITY_INSERT [dbo].[respuestas_respuesta] ON 

INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (1, N'La ciudad de las esculturas', 1, 1)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (2, N'Ciudad Museo', 0, 1)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (3, N'Ciudad Capital', 0, 1)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (4, N'200', 0, 2)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (5, N'700', 0, 2)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (6, N'600', 1, 2)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (7, N'Los departamentos provinciales', 1, 3)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (8, N'Las ciudades principales', 0, 3)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (9, N'Grandes personajes que forzaron Chaco', 0, 3)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (10, N'La Municipalidad de la Ciudad', 0, 4)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (11, N'El Fogón de los Arrieros', 0, 4)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (12, N'Casa de Gobierno', 1, 4)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (13, N'Charata', 0, 5)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (14, N'Gancedo', 0, 5)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (15, N'Presidencia Roque Sáenz Peña', 1, 5)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (16, N'Caza comunal de animales', 1, 6)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (17, N'Nombre de un árbol que abunda en la región', 0, 6)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (18, N'Nombre de un animal', 0, 6)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (19, N'Gral. Lorenzo Winter', 0, 7)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (20, N'Gral. Julio de Vedia', 1, 7)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (21, N'Gral. Antonio Dónovan', 0, 7)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (22, N'1973', 0, 8)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (23, N'1974', 1, 8)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (24, N'1976', 0, 8)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (25, N'8 de Agosto de 1951', 1, 9)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (26, N'8 de Agosto de 1958', 0, 9)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (27, N'8 de Agosto de 1955', 0, 9)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (28, N'Esteco', 0, 10)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (29, N'Concepción del Bermejo', 1, 10)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (30, N'San Fernando del Río Negro', 0, 10)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (31, N'Juan Manuel Silva', 1, 11)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (32, N'Giorgio Carrara', 0, 11)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (33, N'Marcos Siebert', 0, 11)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (34, N'Básquet', 1, 12)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (35, N'Fútbol', 0, 12)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (36, N'Jockey', 0, 12)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (37, N'Natación', 0, 13)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (38, N'Remo', 0, 13)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (39, N'Atletismo', 1, 13)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (40, N'For Ever', 0, 14)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (41, N'Sarmiento', 1, 14)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (42, N'Don Orione', 0, 14)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (43, N'Baloncesto', 1, 15)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (44, N'Fútbol', 0, 15)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (45, N'Natación', 0, 15)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (46, N'Litoral Chaqueño, centro Chaqueño e Impenetrable Chaqueño', 1, 16)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (47, N'Litoral Chaqueño e Impenetrable Chaqueño', 0, 16)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (48, N'Chaco Boreal y Chaco Austral', 0, 16)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (49, N'Pilcomayo', 0, 17)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (50, N'Paraná', 0, 17)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (51, N'Bermejo', 1, 17)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (52, N'99.633 Km²', 1, 18)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (53, N'32.565 Km²', 0, 18)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (54, N'29.900 Km²', 0, 18)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (55, N'25', 1, 19)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (56, N'20', 0, 19)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (57, N'10', 0, 19)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (58, N'5', 0, 20)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (59, N'4', 0, 20)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (60, N'3', 1, 20)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (61, N'Caña de azúcar', 0, 21)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (62, N'Algodón', 1, 21)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (63, N'Producción de tanino', 0, 21)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (64, N'Algodón', 1, 22)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (65, N'Pesca', 0, 22)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (66, N'Caza', 0, 22)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (67, N'Resistencia', 0, 23)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (68, N'Puerto Tirol', 0, 23)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (69, N'Vicentini', 1, 23)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (70, N'Resistencia', 0, 24)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (71, N'Margarita Belén', 0, 24)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (72, N'Quitilipi', 1, 24)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (73, N'Reserva Natural Provincial Fuerte Esperanza', 1, 25)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (74, N'Campo del Cielo', 0, 25)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (75, N'Villa Río Bermejito', 0, 25)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (76, N'300.000', 0, 26)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (77, N'2.000.000', 0, 26)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (78, N'1.000.000', 1, 26)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (79, N'Tony Zalazar', 0, 27)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (80, N'Aledo Luis Meloni', 1, 27)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (81, N'Tete Romero', 0, 27)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (82, N'Flor del cardo', 0, 28)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (83, N'Flor del Ceibo', 0, 28)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (84, N'Flor rosada del palo borracho', 1, 28)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (85, N'Dos Gobernaciones (Chaco Austral y Chaco Central)', 1, 29)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (86, N'Tres Gobernaciones', 0, 29)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (87, N'Cuatro Gobernaciones', 0, 29)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (88, N'Parque Nacional Chaco', 1, 30)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (89, N'Parque Nacional El Impenetrable', 0, 30)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (90, N'Parque Nacional Iberá', 0, 30)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (91, N'Acordeón', 0, 31)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (92, N'N´viké', 1, 31)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (93, N'Charango', 0, 31)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (94, N'El coro polifónico de Resistencia', 0, 32)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (95, N'El coro de niños', 0, 32)
INSERT [dbo].[respuestas_respuesta] ([id], [respuestas], [respuesta_correcta], [pregunta_id]) VALUES (96, N'El coro Chelaalapí', 1, 32)
SET IDENTITY_INSERT [dbo].[respuestas_respuesta] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios_usuario] ON 

INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad], [puntaje_total]) VALUES (3, N'pbkdf2_sha256$180000$LZmwR2lQWJa8$GDXnUc4d1r5gcyhG9jsxzNzzOhZaCLz+yZc6YLlk42o=', NULL, 1, N'gfive', N'', N'', N'g@gmail.com', 1, 1, CAST(N'2021-09-02T20:03:29.1067860' AS DateTime2), NULL, 0)
INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad], [puntaje_total]) VALUES (4, N'pbkdf2_sha256$180000$hGIA2vWG41ZB$zPnak+17UoKqbhTzNgMah1HvZJaZajtwWkgNy4nsEgA=', CAST(N'2021-09-02T23:27:10.3774580' AS DateTime2), 0, N'GonzaMorales18', N'Gonzalo Morales', N'', N'g@gmail.com', 0, 1, CAST(N'2021-09-02T22:44:04.0104490' AS DateTime2), N'Resistencia', 8)
INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad], [puntaje_total]) VALUES (5, N'pbkdf2_sha256$180000$wElyKOz8xarL$VLFrde/Z9ZSQqXiN6BMk5QZqbQ9alfmTph8hsec2HAQ=', CAST(N'2021-09-02T22:46:10.2249570' AS DateTime2), 0, N'FernandoCardozo', N'Fernando Cardozo', N'', N'g@gmail.com', 0, 1, CAST(N'2021-09-02T22:46:02.3674420' AS DateTime2), N'Resistencia', 6)
INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad], [puntaje_total]) VALUES (6, N'pbkdf2_sha256$180000$Qsgrb6ZmoNu2$eObykK1G18Wq/DEdFPjr9ueU+bD+CFpKLYYgAgS/Mss=', CAST(N'2021-09-02T22:47:50.8423360' AS DateTime2), 0, N'Laugomez30', N'Laura Gomez', N'', N'g@gmail.com', 0, 1, CAST(N'2021-09-02T22:47:42.5108320' AS DateTime2), N'Resistencia', 6)
INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad], [puntaje_total]) VALUES (7, N'pbkdf2_sha256$180000$NYavuheGgz14$X0akSvOI/y8YamrcWVniQURO4xAYQs06HQBmZcsCPMQ=', CAST(N'2021-09-02T22:49:29.4354580' AS DateTime2), 0, N'elNicoTortosa', N'Nicolas Tortosa', N'', N'g@gmail.com', 0, 1, CAST(N'2021-09-02T22:49:20.6525150' AS DateTime2), N'Resistencia', 9)
INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad], [puntaje_total]) VALUES (8, N'pbkdf2_sha256$180000$H1OW11FcG1uD$g+floZLRbkdFtXkocL3c/U/uqjVdx1gJ0YVrbRcItDw=', CAST(N'2021-09-02T22:51:50.7474520' AS DateTime2), 0, N'MarAlegre1', N'Mario Alegre', N'', N'g@gmail.com', 0, 1, CAST(N'2021-09-02T22:51:42.1502730' AS DateTime2), N'Resistencia', 9)
INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad], [puntaje_total]) VALUES (10, N'pbkdf2_sha256$180000$QJt4dGsNzeRX$fpULFD0CIJC99ZQOOYLm1+F6+tf+bJGElBj+qZE+rMs=', CAST(N'2021-09-02T22:57:53.1510040' AS DateTime2), 0, N'Francoo1', N'Franco Pas', N'', N'g@gmail.com', 0, 1, CAST(N'2021-09-02T22:57:45.8155140' AS DateTime2), N'Resistencia', 7)
INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad], [puntaje_total]) VALUES (11, N'pbkdf2_sha256$180000$gCaQEFkfUAJg$J3gvo5D1UmPXgUbT5i3QEm4mQWxsbI3RuVlbdx/fF7M=', CAST(N'2021-09-02T23:38:34.2475350' AS DateTime2), 0, N'MauriMS', N'Mauricio Scheffer', N'', N'g@gmail.com', 0, 1, CAST(N'2021-09-02T23:38:13.8996890' AS DateTime2), N'Resistencia', 9)
INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad], [puntaje_total]) VALUES (12, N'pbkdf2_sha256$180000$cDw1Hv6mPfaY$lGn04TaX24oVmSQpDTE49PLTYJMK4EOFUar+IAst/n4=', CAST(N'2021-09-02T23:40:15.7474380' AS DateTime2), 0, N'PedroRe', N'Pedro Re', N'', N'g@gmail.com', 0, 1, CAST(N'2021-09-02T23:39:57.7241340' AS DateTime2), N'Resistencia', 8)
INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad], [puntaje_total]) VALUES (13, N'pbkdf2_sha256$180000$nTyeUNqfZwIW$iMiy24i5HypasPfFGJmBHu1+OeBKA9hwmBnDeIFB73g=', CAST(N'2021-09-02T23:46:55.8180060' AS DateTime2), 0, N'Luciana1333', N'Luciana', N'', N'g@gmail.com', 0, 1, CAST(N'2021-09-02T23:46:45.5838870' AS DateTime2), N'Resistencia', 7)
INSERT [dbo].[usuarios_usuario] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined], [localidad], [puntaje_total]) VALUES (14, N'pbkdf2_sha256$180000$CyoPVQIJZF7d$WyKNbEBMBOaLuHPpBwkI3isIAepLaY0kFwlOrMDAq+E=', CAST(N'2021-09-03T02:03:18.2613640' AS DateTime2), 0, N'Carlosgomez1', N'Carlos Gomez', N'', N'Carlosgomez@gmail.com', 0, 1, CAST(N'2021-09-03T02:03:04.6144570' AS DateTime2), N'Resistencia', 8)
SET IDENTITY_INSERT [dbo].[usuarios_usuario] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_group_name_a6ea08ec_uniq]    Script Date: 3/9/2021 00:05:33 ******/
ALTER TABLE [dbo].[auth_group] ADD  CONSTRAINT [auth_group_name_a6ea08ec_uniq] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_b120cbf9]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_group_id_b120cbf9] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_permission_id_0cd325b0_uniq]    Script Date: 3/9/2021 00:05:33 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_group_permissions_group_id_permission_id_0cd325b0_uniq] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC,
	[permission_id] ASC
)
WHERE ([group_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_permission_id_84c5c92e]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_permission_id_84c5c92e] ON [dbo].[auth_group_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_permission_content_type_id_2f476e4b]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [auth_permission_content_type_id_2f476e4b] ON [dbo].[auth_permission]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_permission_content_type_id_codename_01ab375a_uniq]    Script Date: 3/9/2021 00:05:33 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_permission_content_type_id_codename_01ab375a_uniq] ON [dbo].[auth_permission]
(
	[content_type_id] ASC,
	[codename] ASC
)
WHERE ([content_type_id] IS NOT NULL AND [codename] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_content_type_id_c4bce8eb]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [django_admin_log_content_type_id_c4bce8eb] ON [dbo].[django_admin_log]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_user_id_c564eba6]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [django_admin_log_user_id_c564eba6] ON [dbo].[django_admin_log]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [django_content_type_app_label_model_76bd3d3b_uniq]    Script Date: 3/9/2021 00:05:33 ******/
CREATE UNIQUE NONCLUSTERED INDEX [django_content_type_app_label_model_76bd3d3b_uniq] ON [dbo].[django_content_type]
(
	[app_label] ASC,
	[model] ASC
)
WHERE ([app_label] IS NOT NULL AND [model] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_session_expire_date_a5c62663]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [django_session_expire_date_a5c62663] ON [dbo].[django_session]
(
	[expire_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [preguntas_pregunta_categoria_id_92882307]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [preguntas_pregunta_categoria_id_92882307] ON [dbo].[preguntas_pregunta]
(
	[categoria_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [respuestas_respuesta_pregunta_id_9d0b4a96]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [respuestas_respuesta_pregunta_id_9d0b4a96] ON [dbo].[respuestas_respuesta]
(
	[pregunta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__usuarios__F3DBC5720AA70745]    Script Date: 3/9/2021 00:05:33 ******/
ALTER TABLE [dbo].[usuarios_usuario] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_groups_group_id_e77f6dcf]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_groups_group_id_e77f6dcf] ON [dbo].[usuarios_usuario_groups]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_groups_usuario_id_7a34077f]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_groups_usuario_id_7a34077f] ON [dbo].[usuarios_usuario_groups]
(
	[usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_groups_usuario_id_group_id_4ed5b09e_uniq]    Script Date: 3/9/2021 00:05:33 ******/
CREATE UNIQUE NONCLUSTERED INDEX [usuarios_usuario_groups_usuario_id_group_id_4ed5b09e_uniq] ON [dbo].[usuarios_usuario_groups]
(
	[usuario_id] ASC,
	[group_id] ASC
)
WHERE ([usuario_id] IS NOT NULL AND [group_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_user_permissions_permission_id_4e5c0f2f]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_user_permissions_permission_id_4e5c0f2f] ON [dbo].[usuarios_usuario_user_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_user_permissions_usuario_id_60aeea80]    Script Date: 3/9/2021 00:05:33 ******/
CREATE NONCLUSTERED INDEX [usuarios_usuario_user_permissions_usuario_id_60aeea80] ON [dbo].[usuarios_usuario_user_permissions]
(
	[usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [usuarios_usuario_user_permissions_usuario_id_permission_id_217cadcd_uniq]    Script Date: 3/9/2021 00:05:33 ******/
CREATE UNIQUE NONCLUSTERED INDEX [usuarios_usuario_user_permissions_usuario_id_permission_id_217cadcd_uniq] ON [dbo].[usuarios_usuario_user_permissions]
(
	[usuario_id] ASC,
	[permission_id] ASC
)
WHERE ([usuario_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_permission]  WITH CHECK ADD  CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[auth_permission] CHECK CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_user_id_c564eba6_fk_usuarios_usuario_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[usuarios_usuario] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_user_id_c564eba6_fk_usuarios_usuario_id]
GO
ALTER TABLE [dbo].[preguntas_pregunta]  WITH CHECK ADD  CONSTRAINT [preguntas_pregunta_categoria_id_92882307_fk_categorias_categoria_id] FOREIGN KEY([categoria_id])
REFERENCES [dbo].[categorias_categoria] ([id])
GO
ALTER TABLE [dbo].[preguntas_pregunta] CHECK CONSTRAINT [preguntas_pregunta_categoria_id_92882307_fk_categorias_categoria_id]
GO
ALTER TABLE [dbo].[respuestas_respuesta]  WITH CHECK ADD  CONSTRAINT [respuestas_respuesta_pregunta_id_9d0b4a96_fk_preguntas_pregunta_id] FOREIGN KEY([pregunta_id])
REFERENCES [dbo].[preguntas_pregunta] ([id])
GO
ALTER TABLE [dbo].[respuestas_respuesta] CHECK CONSTRAINT [respuestas_respuesta_pregunta_id_9d0b4a96_fk_preguntas_pregunta_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_groups]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_groups_group_id_e77f6dcf_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_groups] CHECK CONSTRAINT [usuarios_usuario_groups_group_id_e77f6dcf_fk_auth_group_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_groups]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_groups_usuario_id_7a34077f_fk_usuarios_usuario_id] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuarios_usuario] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_groups] CHECK CONSTRAINT [usuarios_usuario_groups_usuario_id_7a34077f_fk_usuarios_usuario_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_user_permissions_permission_id_4e5c0f2f_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions] CHECK CONSTRAINT [usuarios_usuario_user_permissions_permission_id_4e5c0f2f_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions]  WITH CHECK ADD  CONSTRAINT [usuarios_usuario_user_permissions_usuario_id_60aeea80_fk_usuarios_usuario_id] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuarios_usuario] ([id])
GO
ALTER TABLE [dbo].[usuarios_usuario_user_permissions] CHECK CONSTRAINT [usuarios_usuario_user_permissions_usuario_id_60aeea80_fk_usuarios_usuario_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_action_flag_a8637d59_check] CHECK  (([action_flag]>=(0)))
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_action_flag_a8637d59_check]
GO
USE [master]
GO
ALTER DATABASE [ConsultorChaquenio] SET  READ_WRITE 
GO
