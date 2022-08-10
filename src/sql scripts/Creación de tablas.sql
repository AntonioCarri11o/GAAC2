create database Integradora;
use Integradora;
/*Administrador*/
create table Administrador(
    Usuario varchar (8),
    Codigo varchar (5),
    constraint pk_Administrador
    primary key (Usuario)
);
/*Tabla carrera*/
create table carrera(
    ID VARCHAR (5),
    Nombre VARCHAR (200),
    CONSTRAINT pk_Carrera
    PRIMARY key (id)
);

/*--Materia*/
Create table Materia(
    ID VARCHAR (10),
    Nombre varchar(100),
    CONSTRAINT pk_Materia
    PRIMARY key (ID)
);

/*----------Tablas con dependencia----------*/
/*--Tabla cuatrimestre */
Create table Cuatrimestre(
    ID VARCHAR(6),
    Periodo varchar (50),
    Estado VARCHAR(8) default 'Inactivo',
    Mujeres_atendidas int DEFAULT 0,
    Hombres_atendidos int default 0,
    Otros_atendidos int default 0,
    year int,
    constraint pk_Cuatrimestre
    primary KEY (id)
);

/*Tabla docente*/
create table docente(
    Correo VARCHAR(50),
    Nombre VARCHAR (40),
    Apellido1 VARCHAR (20),
    Apellido2 VARCHAR(20),
    Contrasena VARCHAR (10),
    codigo varchar(20),
    ID_cuatrimestre VARCHAR(11),
    CONSTRAINT pk_docente
    primary key (Correo),
    CONSTRAINT fk_Docente_Cuatrimestre
    foreign key (ID_cuatrimestre) REFERENCES Cuatrimestre(id)
);
/*Tabla estudiante*/
create table estudiante(
    Correo varchar(22),
    Matricula VARCHAR(10) UNIQUE,
    NombreCompleto varchar (60),
    Telefono varchar(10) UNIQUE,
    Sexo char (1),
    ID_carrera varchar(5),
    ID_cuatrimestre varchar(6),
    estado VARCHAR(8) default 'Activo',
    contrasena varchar(10),
    codigo varchar(20),
    constraint pk_Estudiante
    primary key (Correo),
    constraint fk_Estudiante_Carrera
    foreign key (ID_carrera) REFERENCES carrera(ID),
    constraint fk_Estudiante_Cuatrimestre
    foreign key (ID_cuatrimestre) REFERENCES cuatrimestre(ID)
);
/*Sesion de asesoria*/
create table Sesion_asesoria(
    id VARCHAR(10),
    estado VARCHAR(11) default 'Solicitada',
    Correo_Docente varchar(50),
    Correo_Estudiante varchar(22),
    ID_cuatrimestre varchar(11),
    Id_materia VARCHAR(10),
    constraint pk_Sesion
    PRIMARY key (id),
    CONSTRAINT fk_Sesion_Docente
    foreign key (Correo_Docente) REFERENCES Docente(Correo),
    constraint fk_Sesion_Estudiante 
    foreign key (Correo_Estudiante) REFERENCES estudiante(Correo),
    constraint fk_Sesion_Cuatrimestre 
    foreign key (ID_cuatrimestre) REFERENCES Cuatrimestre(id),
    constraint fk_Sesion_Materia
    foreign key (ID_Materia) REFERENCES Materia(id)    
);
select* from estudiante;
/*----------Tablas de intersección----------*/
/*Docente_has_materia*/
create table Docente_has_materia(
    Correo_Docente varchar (50),
    ID_Materia varchar (10),
    constraint fk_dmDocente 
    foreign key (Correo_Docente) REFERENCES Docente(Correo),
    constraint fk_dmMateria
    foreign key (Id_materia) REFERENCES materia (id)
);
/*Carrera_materia*/
create table Materia_carrera(
    ID_carrera varchar(5),
    Id_materia VARCHAR(10),
    constraint fk_cmCarrera 
    foreign key (ID_carrera) REFERENCES carrera(id),
    constraint fk_cmMateria 
    foreign key (Id_materia) REFERENCES Materia(id)
);
select * from estudiante;