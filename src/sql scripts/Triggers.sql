/*---TRIGGERS---*/

/*Cuatrimestre*/
CREATE DEFINER=`root`@`localhost` TRIGGER `cuatrimestre_BEFORE_INSERT` BEFORE INSERT ON `cuatrimestre` FOR EACH ROW 
BEGIN
declare 
sid varchar(11);
set sid=concat(new.Periodo,'',new.yeear);
set new.id=sid;
END;

CREATE DEFINER=`root`@`localhost` TRIGGER `cuatrimestre_BEFORE_UPDATE` BEFORE UPDATE ON `cuatrimestre` FOR EACH ROW BEGIN
if new.estado='Activo' then
Begin 
	update ESTUDIANTE
	set id_cuatrimestre= new.id where estado='Activo';
	update DOCENTE
	set id_cuatrimestre= new.id;
end;
end if;
END
/*Estudiantes*/
CREATE DEFINER=`root`@`localhost` TRIGGER `estudiante_BEFORE_INSERT` BEFORE INSERT ON `estudiante` FOR EACH ROW BEGIN
declare idcr varchar(11);
select ID into idcr from cuatrimestre where Estado='Activo';
set new.ID_cuatrimestre=idcr;
set new.Matricula=substring(new.Correo,1,10);
END
/*Docente*/
CREATE DEFINER=`root`@`localhost` TRIGGER `docente_BEFORE_INSERT` BEFORE INSERT ON `docente` FOR EACH ROW BEGIN
declare idcr varchar(11);
select ID into idcr from cuatrimestre where Estado='Activo';
set new.ID_cuatrimestre=idcr;
END