# --------------------------------------------------------
# Host:                         localhost
# Server version:               5.5.12
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2012-08-17 14:05:56
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for empatiagamt
DROP DATABASE IF EXISTS `empatiagamt`;
CREATE DATABASE IF NOT EXISTS `empatiagamt` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `empatiagamt`;


# Dumping structure for procedure empatiagamt.catalogoServicioID
DROP PROCEDURE IF EXISTS `catalogoServicioID`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `catalogoServicioID`(IN `id` INT)
BEGIN
select * from catalogoservicios c where c.idcatalogoServicios=id;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.catalogoservicios
DROP TABLE IF EXISTS `catalogoservicios`;
CREATE TABLE IF NOT EXISTS `catalogoservicios` (
  `idcatalogoServicios` int(11) NOT NULL AUTO_INCREMENT,
  `tipoServicio` varchar(50) DEFAULT NULL,
  `nombreCurso` varchar(50) DEFAULT NULL,
  `objetivo` varchar(500) DEFAULT NULL,
  `competencia` varchar(500) DEFAULT NULL,
  `semanas` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcatalogoServicios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.catalogoservicios: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogoservicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogoservicios` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.catalogoServiciosAltas
DROP PROCEDURE IF EXISTS `catalogoServiciosAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `catalogoServiciosAltas`(IN `obj` vARCHAR(500), IN `comp` VARCHAR(500), IN `duracion` INT, IN `tipo` VARCHAR(50), IN `nom` vARCHAR(50))
BEGIN
insert into catalogoservicios values(null,tipo,nom,obj,comp,duracion);
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.catalogoServiciosBorrar
DROP PROCEDURE IF EXISTS `catalogoServiciosBorrar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `catalogoServiciosBorrar`(IN `idCatalogoServ` INT)
BEGIN
delete from catalogoservicios where idcatalogoServicios=idCatalogoServ;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.catalogoServiciosConsulta
DROP PROCEDURE IF EXISTS `catalogoServiciosConsulta`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `catalogoServiciosConsulta`()
BEGIN
#select c.idcatalogoServicios,c.tipoServicio , c.objetivo ,c.competencia, c.semanas  from catalogoservicios c;
select * from catalogoservicios;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.catalogoServiciosModificar
DROP PROCEDURE IF EXISTS `catalogoServiciosModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `catalogoServiciosModificar`(IN `idCatalogo` INT, IN `obj` vARCHAR(500), IN `comp` VARCHAR(500), IN `duracion` INT, IN `tipo` VARCHAR(50), IN `nom` VARCHAR(50))
BEGIN
update catalogoservicios  set  objetivo=obj, competencia=comp, semanas=duracion, tiposervicio= tipo,nombreCurso=nom where idcatalogoServicios=idCatalogo;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.datosfacturacion
DROP TABLE IF EXISTS `datosfacturacion`;
CREATE TABLE IF NOT EXISTS `datosfacturacion` (
  `idDatosFacturacion` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `RFC` varchar(45) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDatosFacturacion`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.datosfacturacion: ~2 rows (approximately)
/*!40000 ALTER TABLE `datosfacturacion` DISABLE KEYS */;
INSERT INTO `datosfacturacion` (`idDatosFacturacion`, `nombre`, `RFC`, `direccion`, `Telefono`) VALUES
	(43, 'JARED BUSTAMANTE QUIÑONEZ', 'BUQJU230942309', 'ASDADS', '6621818044'),
	(44, 'UTHERMOSILLO', 'BUQJU230942309', 'ASDADS', '6621818044');
/*!40000 ALTER TABLE `datosfacturacion` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.datosfacturacionAltas
DROP PROCEDURE IF EXISTS `datosfacturacionAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `datosfacturacionAltas`(IN `nom` VARCHAR(50), IN `p_rfc` VARCHAR(50), IN `dir` VARCHAR(50), IN `tel` VARCHAR(50))
BEGIN
insert into datosfacturacion values(null,nom,p_rfc,dir,tel);
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.datosfacturacionBorrar
DROP PROCEDURE IF EXISTS `datosfacturacionBorrar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `datosfacturacionBorrar`(IN `idFac` VARCHAR(50))
BEGIN
delete from datosfacturacion  where idDatosFacturacion=idFac;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.datosFacturacionConsultar
DROP PROCEDURE IF EXISTS `datosFacturacionConsultar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `datosFacturacionConsultar`()
BEGIN
select * from datosfacturacion;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.datosFacturacionConsultarId
DROP PROCEDURE IF EXISTS `datosFacturacionConsultarId`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `datosFacturacionConsultarId`(IN `idFact` INT)
BEGIN
select d.idDatosFacturacion,d.nombre,d.RFC,d.direccion,d.Telefono from datosfacturacion d where d.idDatosFacturacion=idFact;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.datosfacturacionModificar
DROP PROCEDURE IF EXISTS `datosfacturacionModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `datosfacturacionModificar`(IN `idfact` INT, IN `tel` VARCHAR(50), IN `dir` VARCHAR(50), IN `p_rfc` VARCHAR(50), IN `nom` VARCHAR(50))
BEGIN
update datosfacturacion set nombre=nom, RFC=p_rfc, direccion=dir, telefono= tel where iddatosfacturacion=idfact;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.datosimc
DROP TABLE IF EXISTS `datosimc`;
CREATE TABLE IF NOT EXISTS `datosimc` (
  `idIMC` int(11) NOT NULL AUTO_INCREMENT,
  `historialMedico_idhistorialMedico` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `altura` double DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `imc` double DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idIMC`),
  KEY `fk_IMC_historialMedico1` (`historialMedico_idhistorialMedico`),
  CONSTRAINT `fk_IMC_historialMedico1` FOREIGN KEY (`historialMedico_idhistorialMedico`) REFERENCES `historialmedico` (`idhistorialMedico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.datosimc: ~4 rows (approximately)
/*!40000 ALTER TABLE `datosimc` DISABLE KEYS */;
INSERT INTO `datosimc` (`idIMC`, `historialMedico_idhistorialMedico`, `fecha`, `altura`, `peso`, `imc`, `estado`) VALUES
	(1, 43, '2012-08-17', 1.65, 100, 36.73094582185492, 'sobrepeso grado 2'),
	(2, 43, '2012-08-17', 1.65, 100, 36.73094582185492, 'sobrepeso grado 2'),
	(3, 43, '2012-08-17', 1.65, 100, 36.73094582185492, 'sobrepeso grado 2'),
	(4, 43, '2012-08-17', 1.69, 100, 35.01277966457757, 'sobrepeso grado 2');
/*!40000 ALTER TABLE `datosimc` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.datosIMCAltas
DROP PROCEDURE IF EXISTS `datosIMCAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `datosIMCAltas`(IN `idHistorialMedico` INT, IN `peso` DOUBLE, IN `altura` DOUBLE, IN `fecha` DATE)
BEGIN
set @imc=peso/(altura*altura);#calcula el IMC de la persona
#select @imc;
select t.clasificacion into @descripcion from  tablapesos t where @imc between t.menor and t.mayor;
#select @descripcion;
insert into datosimc values(null,idHistorialMedico,fecha, altura,peso,@imc,@descripcion);
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.DatosIMCBorrar
DROP PROCEDURE IF EXISTS `DatosIMCBorrar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `DatosIMCBorrar`(IN `p_idImc` INT)
BEGIN
DELETE FROM `datosimc` WHERE `idIMC`=p_idImc LIMIT 1;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.DatosImcConsultar
DROP PROCEDURE IF EXISTS `DatosImcConsultar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `DatosImcConsultar`(IN `id_Participante` INT)
BEGIN
select  p.idparticipante,h.institucion,h.tratamiento, d.fecha, d.altura,d.peso,d.imc,d.estado,d.idIMC
from datosimc d, participante p, historialmedico h 
where h.idhistorialMedico=p.idhistorial and d.historialMedico_idhistorialMedico=p.idhistorial and p.idparticipante=id_Participante;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.datosIMCxMesConsultar
DROP PROCEDURE IF EXISTS `datosIMCxMesConsultar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `datosIMCxMesConsultar`(IN `id_Participante` INT)
    COMMENT 'mestra un listado de promedio mensual de imc de un participante, detalla mes y año'
BEGIN
#promedio mensual de imc 
#select avg(imc) as 'IMC', monthname(fecha) as 'MES', year(fecha) as 'ANIO' from datosimc where historialMedico_idhistorialMedico in(
#select idhistorialmedico from historialmedico where idhistorialmedico in(select idhistorial from participante where idparticipante =idParticipante))  group by (month(fecha))desc ;


select imc ,mes,anio, t.clasificacion from tablapesos t, (
select avg(imc) as 'IMC', monthname(fecha) as 'MES', year(fecha) as 'ANIO' from datosimc where historialMedico_idhistorialMedico in(
select idhistorialmedico from historialmedico where idhistorialmedico in(select idhistorial from participante where idparticipante =id_Participante)
)  group by (month(fecha)
)desc ) as t1 where imc between menor and mayor;

END//
DELIMITER ;


# Dumping structure for table empatiagamt.datosprocedencia
DROP TABLE IF EXISTS `datosprocedencia`;
CREATE TABLE IF NOT EXISTS `datosprocedencia` (
  `idProcedenciaParticipante` int(11) NOT NULL AUTO_INCREMENT,
  `idEscuelas` int(11) NOT NULL,
  `idparticipante` int(11) NOT NULL,
  `nombreMaestra` varchar(45) DEFAULT NULL,
  `promedio` double DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idProcedenciaParticipante`),
  KEY `fk_Escuelas_has_participante_participante1` (`idparticipante`),
  KEY `fk_Escuelas_has_participante_Escuelas1` (`idEscuelas`),
  CONSTRAINT `fk_Escuelas_has_participante_Escuelas1` FOREIGN KEY (`idEscuelas`) REFERENCES `escuelas` (`idEscuelas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Escuelas_has_participante_participante1` FOREIGN KEY (`idparticipante`) REFERENCES `participante` (`idparticipante`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.datosprocedencia: ~1 rows (approximately)
/*!40000 ALTER TABLE `datosprocedencia` DISABLE KEYS */;
INSERT INTO `datosprocedencia` (`idProcedenciaParticipante`, `idEscuelas`, `idparticipante`, `nombreMaestra`, `promedio`, `fecha`) VALUES
	(19, 9, 208, 'sandra', 88, '2012-08-17');
/*!40000 ALTER TABLE `datosprocedencia` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.DatosProcedenciaAltas
DROP PROCEDURE IF EXISTS `DatosProcedenciaAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `DatosProcedenciaAltas`(IN `idEsc` INT, IN `idPart` INT, IN `nMaestra` VARCHAR(50), IN `prom` DOUBLE, IN `fech` DATE)
BEGIN

insert into datosprocedencia values(null, idEsc,idPart,nMaestra,prom,fech);

END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.datosProcedenciaBorrar
DROP PROCEDURE IF EXISTS `datosProcedenciaBorrar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `datosProcedenciaBorrar`(IN `idDatProce` INT)
BEGIN
delete from datosprocedencia where idProcedenciaParticipante= idDatProce;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.datosProcedenciaConsultar
DROP PROCEDURE IF EXISTS `datosProcedenciaConsultar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `datosProcedenciaConsultar`(IN `idPart` INT)
BEGIN
select d.idProcedenciaParticipante as 'Num', d.idEscuelas as 'clave de Escuela', d.idparticipante as 'clave del participante', d.nombreMaestra as 'Nombre del maestro(a)', d.promedio as 'Promedio', d.fecha as 'Fecha' 
from datosprocedencia d, escuelas e where d.idEscuelas=e.idEscuelas and d.idparticipante=idPart;

END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.datosProcedenciaConsultarId
DROP PROCEDURE IF EXISTS `datosProcedenciaConsultarId`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `datosProcedenciaConsultarId`(IN `Id` INT)
BEGIN
select d.idProcedenciaParticipante as 'Num', e.idEscuelas , d.idparticipante as 'clave del participante', d.nombreMaestra as 'Nombre del maestro(a)', d.promedio as 'Promedio', d.fecha as 'Fecha' 
from datosprocedencia d, escuelas e where d.idEscuelas=e.idEscuelas and d.idProcedenciaParticipante=id;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.datosProcedenciaModificar
DROP PROCEDURE IF EXISTS `datosProcedenciaModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `datosProcedenciaModificar`(IN `idDatProce` INT, IN `idEsc` INT, IN `idPart` INT, IN `nMaestra` VARCHAR(50), IN `prom` DOUBLE, IN `fech` DATE)
BEGIN
update datosprocedencia set idEscuelas=idEsc, nombreMaestra=nMaestra,promedio=prom,fecha=fech where idProcedenciaParticipante=idDatProce;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.escuelas
DROP TABLE IF EXISTS `escuelas`;
CREATE TABLE IF NOT EXISTS `escuelas` (
  `idEscuelas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEscuelas`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.escuelas: ~1 rows (approximately)
/*!40000 ALTER TABLE `escuelas` DISABLE KEYS */;
INSERT INTO `escuelas` (`idEscuelas`, `nombre`, `direccion`, `telefono`) VALUES
	(9, 'jose vasconcelos', 'panama ', '111111');
/*!40000 ALTER TABLE `escuelas` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.escuelasAltas
DROP PROCEDURE IF EXISTS `escuelasAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `escuelasAltas`(IN `nom` VARCHAR(50), IN `dir` VARCHAR(50), IN `tel` VARCHAR(50))
BEGIN
insert into escuelas values(null,nom,dir,tel);
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.escuelasBorrar
DROP PROCEDURE IF EXISTS `escuelasBorrar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `escuelasBorrar`(IN `idEsc` INT)
BEGIN
delete from escuelas where idEscuelas= idEsc;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.escuelasModificar
DROP PROCEDURE IF EXISTS `escuelasModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `escuelasModificar`(IN `idEsc` INT, IN `nom` VARCHAR(50), IN `dir` VARCHAR(50), IN `tel` VARCHAR(50))
BEGIN
update escuelas e set e.nombre=nom, e.direccion= dir, e.telefono= tel where e.idEscuelas= idEsc;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.escuelasmostrar
DROP PROCEDURE IF EXISTS `escuelasmostrar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `escuelasmostrar`()
BEGIN
Select * from escuelas;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.escuelasmostraruno
DROP PROCEDURE IF EXISTS `escuelasmostraruno`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `escuelasmostraruno`(IN `idEscu` INT)
BEGIN
Select * from escuelas where escuelas.idEscuelas = idEscu;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.facturacioninstructor
DROP TABLE IF EXISTS `facturacioninstructor`;
CREATE TABLE IF NOT EXISTS `facturacioninstructor` (
  `idFacturacionInstructor` int(45) NOT NULL AUTO_INCREMENT,
  `instructor_idinstructor` int(11) NOT NULL,
  `DatosFacturacion_idDatosFacturacion` int(11) NOT NULL,
  PRIMARY KEY (`idFacturacionInstructor`),
  KEY `fk_instructor_has_DatosFacturacion_DatosFacturacion1` (`DatosFacturacion_idDatosFacturacion`),
  KEY `fk_instructor_has_DatosFacturacion_instructor1` (`instructor_idinstructor`),
  CONSTRAINT `fk_instructor_has_DatosFacturacion_DatosFacturacion1` FOREIGN KEY (`DatosFacturacion_idDatosFacturacion`) REFERENCES `datosfacturacion` (`idDatosFacturacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_instructor_has_DatosFacturacion_instructor1` FOREIGN KEY (`instructor_idinstructor`) REFERENCES `instructor` (`idinstructor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.facturacioninstructor: ~1 rows (approximately)
/*!40000 ALTER TABLE `facturacioninstructor` DISABLE KEYS */;
INSERT INTO `facturacioninstructor` (`idFacturacionInstructor`, `instructor_idinstructor`, `DatosFacturacion_idDatosFacturacion`) VALUES
	(11, 207, 43);
/*!40000 ALTER TABLE `facturacioninstructor` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.facturacioninstructorAltas
DROP PROCEDURE IF EXISTS `facturacioninstructorAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `facturacioninstructorAltas`(IN `idinstructor` INT)
BEGIN
insert into facturacioninstructor values(null, idinstructor,(select max(idDatosFacturacion) from datosfacturacion));
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.facturacioninstructorBorrar
DROP PROCEDURE IF EXISTS `facturacioninstructorBorrar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `facturacioninstructorBorrar`(IN `idFactura` INT)
BEGIN
delete from facturacioninstructor  where DatosFacturacion_idDatosFacturacion =idFactura;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.facturacionInstructorId
DROP PROCEDURE IF EXISTS `facturacionInstructorId`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `facturacionInstructorId`(IN `idInst` INT)
BEGIN
select df.idDatosFacturacion,df.nombre,df.RFC,df.direccion,df.Telefono, t1.instructor_idinstructor 
from datosfacturacion df, (select fp.DatosFacturacion_idDatosFacturacion, fp.instructor_idinstructor from facturacioninstructor fp 
where fp.instructor_idinstructor =idInst) as t1
 where df.idDatosFacturacion=DatosFacturacion_idDatosFacturacion;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.facturacionInstructorModificar
DROP PROCEDURE IF EXISTS `facturacionInstructorModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `facturacionInstructorModificar`(IN `idFactura` INT, IN `idinstructor` INT, IN `idDatosFacturacion` INT)
BEGIN
update facturacioninstructor  set instructor_idinstructor =idinstructor, DatosFacturacion_idDatosFacturacion =idDatosFacturacion where f.idFacturacionInstructor=idFactura;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.facturacionparticipante
DROP TABLE IF EXISTS `facturacionparticipante`;
CREATE TABLE IF NOT EXISTS `facturacionparticipante` (
  `idFactracionParticipante` int(11) NOT NULL AUTO_INCREMENT,
  `participante_idparticipante` int(11) NOT NULL,
  `DatosFacturacion_idDatosFacturacion` int(11) NOT NULL,
  PRIMARY KEY (`idFactracionParticipante`),
  KEY `fk_participante_has_DatosFacturacion_DatosFacturacion1` (`DatosFacturacion_idDatosFacturacion`),
  KEY `fk_participante_has_DatosFacturacion_participante1` (`participante_idparticipante`),
  CONSTRAINT `fk_participante_has_DatosFacturacion_DatosFacturacion1` FOREIGN KEY (`DatosFacturacion_idDatosFacturacion`) REFERENCES `datosfacturacion` (`idDatosFacturacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_participante_has_DatosFacturacion_participante1` FOREIGN KEY (`participante_idparticipante`) REFERENCES `participante` (`idparticipante`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.facturacionparticipante: ~1 rows (approximately)
/*!40000 ALTER TABLE `facturacionparticipante` DISABLE KEYS */;
INSERT INTO `facturacionparticipante` (`idFactracionParticipante`, `participante_idparticipante`, `DatosFacturacion_idDatosFacturacion`) VALUES
	(20, 208, 44);
/*!40000 ALTER TABLE `facturacionparticipante` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.facturacionparticipanteAltas
DROP PROCEDURE IF EXISTS `facturacionparticipanteAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `facturacionparticipanteAltas`(IN `idpart` INT, IN `idDatosFac` INT)
BEGIN
#insert into facturacionparticipante values (null, idpart,idDatosFac);

insert into facturacionparticipante values (null, idpart,(select max(idDatosFacturacion) from datosfacturacion));
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.facturacionparticipanteBorrar
DROP PROCEDURE IF EXISTS `facturacionparticipanteBorrar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `facturacionparticipanteBorrar`(IN `idFactPart` INT)
BEGIN
delete from facturacionparticipante where DatosFacturacion_idDatosFacturacion=idFactPart;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.facturacionparticipanteId
DROP PROCEDURE IF EXISTS `facturacionparticipanteId`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `facturacionparticipanteId`(IN `idpart` INT)
BEGIN
/*
select * from datosfacturacion df where df.idDatosFacturacion in( 
select fp.DatosFacturacion_idDatosFacturacion from facturacionparticipante fp 
where fp.participante_idparticipante =idpart) ;*/

select df.idDatosFacturacion,df.nombre,df.RFC,df.direccion,df.Telefono, t1.idFactracionParticipante from datosfacturacion df, (select fp.DatosFacturacion_idDatosFacturacion, fp.idFactracionParticipante from facturacionparticipante fp 
where fp.participante_idparticipante =idpart) as t1
 where df.idDatosFacturacion=DatosFacturacion_idDatosFacturacion;

END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.facturacionparticipanteModificar
DROP PROCEDURE IF EXISTS `facturacionparticipanteModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `facturacionparticipanteModificar`(IN `idFactPart` INT, IN `idpart` INT, IN `idDatosFac` INT)
BEGIN
update facturacionparticipante  set participante_idparticipante=idpart, DatosFacturacion_idDatosFacturacion=idDatosFac where idFactracionParticipante=idFactPart;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.familiar
DROP TABLE IF EXISTS `familiar`;
CREATE TABLE IF NOT EXISTS `familiar` (
  `idfamiliar` int(11) NOT NULL,
  `parentezco` varchar(45) DEFAULT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `puesto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfamiliar`),
  KEY `pkPersona` (`idfamiliar`),
  CONSTRAINT `pkPersona` FOREIGN KEY (`idfamiliar`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.familiar: ~0 rows (approximately)
/*!40000 ALTER TABLE `familiar` DISABLE KEYS */;
/*!40000 ALTER TABLE `familiar` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.FamiliarAltas
DROP PROCEDURE IF EXISTS `FamiliarAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `FamiliarAltas`(IN `clavePart` INT, IN `empresa` VARCHAR(50), IN `puesto` VARCHAR(50), IN `paren` VARCHAR(50), IN `idPersona` INT)
BEGIN
insert into familiar values(idPersona, paren, empresa,puesto);
insert into familiaresparticipante values(null,idPersona,clavePart);
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.FamiliarAsignar
DROP PROCEDURE IF EXISTS `FamiliarAsignar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `FamiliarAsignar`(IN `p_idPersona` INT, IN `p_clavePart` INT)
BEGIN
insert into familiaresparticipante values(null,p_idPersona,p_clavePart);
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.Familiarbajas
DROP PROCEDURE IF EXISTS `Familiarbajas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `Familiarbajas`(IN `p_idfamiliar` INT)
BEGIN
delete from familiaresparticipante where idfamiliar=idfamiliar;
delete from familiar where idfamiliar=p_idfamiliar;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.FamiliarBusqueda
DROP PROCEDURE IF EXISTS `FamiliarBusqueda`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `FamiliarBusqueda`(IN `valor` VARCHAR(50))
    COMMENT 'regresa un listado de los familiares con los participantes relacionados con ellos'
BEGIN
select p.idpersona as 'CLAVE',p.nombre as 'NOMBRE',p.aPaterno as 'APELLIDO PATERNO',p.aMaterno as 'APELLIDO MATERNO',p.fnac as 'FECHA DE NACIMIENTO',p.edoCivil as 'ESTADO CIVIL',p.email as 'E-MAIL',p.rutaFoto as 'RUTA', f.parentezco as 'PARENTEZCO' ,f.empresa as 'EMPRESA',f.puesto as 'PUESTO'
from persona p, familiar f
where nombre like concat("%",valor,"%") or aPaterno like concat("%",valor,"%") or aMaterno like concat("%",valor,"%")and p.idpersona=f.idfamiliar;
/*join familiar f 
where idpersona in(
select idfamiliar from familiar where idfamiliar in(
select idpersona from persona where nombre like concat("%",valor,"%") or aPaterno like concat("%",valor,"%") or aMaterno like concat("%",valor,"%")
		)
	)
;*/
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.FamiliarBusquedaId
DROP PROCEDURE IF EXISTS `FamiliarBusquedaId`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `FamiliarBusquedaId`(IN `valor` INT)
BEGIN
select p.idpersona as 'CLAVE',p.nombre as 'NOMBRE',p.aPaterno as 'APELLIDO PATERNO',p.aMaterno as 'APELLIDO MATERNO',p.fnac as 'FECHA DE NACIMIENTO',p.edoCivil as 'ESTADO CIVIL',p.email as 'E-MAIL',p.rutaFoto as 'RUTA', f.parentezco as 'PARENTEZCO' ,f.empresa as 'EMPRESA',f.puesto as 'PUESTO'
from persona p, familiar f
where p.idpersona=f.idfamiliar;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.FamiliarConsultar
DROP PROCEDURE IF EXISTS `FamiliarConsultar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `FamiliarConsultar`()
BEGIN
select p.idpersona as 'Clave',p.nombre AS 'Nombre',p.aPaterno AS 'Apellido paterno',p.aMaterno AS 'Apellido materno',p.fnac as 'Fecha de nacimiento',p.edoCivil as 'Estado civil',p.email as 'E-mail',p.rutaFoto as 'Ruta',f.parentezco as 'Parentezco',f.empresa as 'Empresa',f.puesto as 'Puesto' from familiar f, persona p where p.idpersona=f.idfamiliar;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.familiaresparticipante
DROP TABLE IF EXISTS `familiaresparticipante`;
CREATE TABLE IF NOT EXISTS `familiaresparticipante` (
  `idfamiliarParticipante` int(11) NOT NULL AUTO_INCREMENT,
  `idFamiliar` int(11) NOT NULL,
  `idParticipante` int(11) NOT NULL,
  PRIMARY KEY (`idfamiliarParticipante`),
  KEY `fk_familiar_has_participante_participante1` (`idParticipante`),
  KEY `fk_familiar_has_participante_familiar1` (`idFamiliar`),
  CONSTRAINT `fk_familiar_has_participante_familiar1` FOREIGN KEY (`idFamiliar`) REFERENCES `familiar` (`idfamiliar`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_familiar_has_participante_participante1` FOREIGN KEY (`idParticipante`) REFERENCES `participante` (`idparticipante`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.familiaresparticipante: ~0 rows (approximately)
/*!40000 ALTER TABLE `familiaresparticipante` DISABLE KEYS */;
/*!40000 ALTER TABLE `familiaresparticipante` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.FamiliaresParticipantesBuscar
DROP PROCEDURE IF EXISTS `FamiliaresParticipantesBuscar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `FamiliaresParticipantesBuscar`(IN `p_idparticipante` INT)
BEGIN
select * from persona where idpersona in(
select idfamiliar from familiar where idfamiliar in(
select idfamiliar from familiaresparticipante where idparticipante =p_idparticipante));
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.FamiliarModificar
DROP PROCEDURE IF EXISTS `FamiliarModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `FamiliarModificar`(IN `p_empresa` VARCHAR(50), IN `p_puesto` VARCHAR(50), IN `p_paren` VARCHAR(50), IN `p_idPersona` INT)
BEGIN
update familiar  set parentezco=p_paren,empresa=p_empresa,puesto=p_puesto where idfamiliar=p_idPersona;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.FamiliarQuitar
DROP PROCEDURE IF EXISTS `FamiliarQuitar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `FamiliarQuitar`(IN `p_idParticipante` INT, IN `p_idFamiliar` INT)
BEGIN
delete from familiaresparticipante  where idFamiliar=p_idFamiliar and idParticipante=p_idParticipante;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.grado_estudios
DROP TABLE IF EXISTS `grado_estudios`;
CREATE TABLE IF NOT EXISTS `grado_estudios` (
  `idGradoEstudios` int(11) NOT NULL AUTO_INCREMENT,
  `grado` varchar(300) DEFAULT NULL,
  `ncedula` varchar(45) DEFAULT NULL,
  `fteminacion` date DEFAULT NULL,
  `idInstructor` int(10) DEFAULT NULL,
  PRIMARY KEY (`idGradoEstudios`),
  KEY `FK_grado_estudios_instructor` (`idInstructor`),
  CONSTRAINT `FK_grado_estudios_instructor` FOREIGN KEY (`idInstructor`) REFERENCES `instructor` (`idinstructor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.grado_estudios: ~0 rows (approximately)
/*!40000 ALTER TABLE `grado_estudios` DISABLE KEYS */;
/*!40000 ALTER TABLE `grado_estudios` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.grado_estudiosAltas
DROP PROCEDURE IF EXISTS `grado_estudiosAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `grado_estudiosAltas`(IN `grad` VARCHAR(300), IN `nced` VARCHAR(50), IN `fterminacion` DATE, IN `idInstruc` INT)
BEGIN
insert into grado_estudios values(null,grad, nced, fterminacion, idInstruc);
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.grado_estudiosBorrar
DROP PROCEDURE IF EXISTS `grado_estudiosBorrar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `grado_estudiosBorrar`(IN `idGrado` INT)
BEGIN
delete from grado_estudios where grado_estudios.idGradoEstudios=idGrado;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.grado_estudiosConsultar
DROP PROCEDURE IF EXISTS `grado_estudiosConsultar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `grado_estudiosConsultar`(IN `idInstruct` INT)
BEGIN
select  g.idGradoEstudios as 'Clave', g.grado as 'Grado', g.ncedula as 'Numero de cedula', g.fteminacion as 'fecha de terminacion'   from grado_estudios g, instructor i  where i.idinstructor=g.idInstructor and i.idinstructor=idInstruct;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.grado_estudiosConsultarId
DROP PROCEDURE IF EXISTS `grado_estudiosConsultarId`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `grado_estudiosConsultarId`(IN `idgrad` INT)
BEGIN
select  g.idGradoEstudios as 'Clave', g.grado as 'Grado', g.ncedula as 'Numero de cedula', g.fteminacion as 'fecha de terminacion'   
from grado_estudios g
where g.idGradoEstudios=idgrad;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.grado_estudiosModificar
DROP PROCEDURE IF EXISTS `grado_estudiosModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `grado_estudiosModificar`(IN `idgrado` INT, IN `grad` VARCHAR(300), IN `nced` VARCHAR(50), IN `fterminacion` DATE)
BEGIN
update grado_estudios  set  grado=grad,ncedula=nced,fteminacion=fterminacion where idGradoEstudios=idgrado;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.historialmedico
DROP TABLE IF EXISTS `historialmedico`;
CREATE TABLE IF NOT EXISTS `historialmedico` (
  `idhistorialMedico` int(11) NOT NULL AUTO_INCREMENT,
  `institucion` varchar(45) DEFAULT NULL,
  `tratamiento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idhistorialMedico`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.historialmedico: ~1 rows (approximately)
/*!40000 ALTER TABLE `historialmedico` DISABLE KEYS */;
INSERT INTO `historialmedico` (`idhistorialMedico`, `institucion`, `tratamiento`) VALUES
	(43, 'ISTESON', 'no se que mas');
/*!40000 ALTER TABLE `historialmedico` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.HistorialMedicoModificar
DROP PROCEDURE IF EXISTS `HistorialMedicoModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `HistorialMedicoModificar`(IN `p_idhistorial` INT, IN `p_institucion` vaRCHAR(50), IN `p_tratamiento` vaRCHAR(50))
BEGIN
update historialmedico h set h.institucion=p_institucion, h.tratamiento=p_tratamiento where h.idhistorialMedico=p_idhistorial;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.inscripcion
DROP TABLE IF EXISTS `inscripcion`;
CREATE TABLE IF NOT EXISTS `inscripcion` (
  `idInscripcion` int(11) NOT NULL AUTO_INCREMENT,
  `idParticipante` int(11) NOT NULL,
  `idServicio` int(11) NOT NULL,
  `idInsctructor` int(11) NOT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `Comentarios` varchar(45) DEFAULT NULL,
  `Inscripcioncol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idInscripcion`),
  KEY `fk_participante_has_catalogoServicios_catalogoServicios1` (`idServicio`),
  KEY `fk_participante_has_catalogoServicios_participante1` (`idParticipante`),
  KEY `fk_participante_has_catalogoServicios_instructor1` (`idInsctructor`),
  CONSTRAINT `fk_participante_has_catalogoServicios_catalogoServicios1` FOREIGN KEY (`idServicio`) REFERENCES `catalogoservicios` (`idcatalogoServicios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_participante_has_catalogoServicios_instructor1` FOREIGN KEY (`idInsctructor`) REFERENCES `instructor` (`idinstructor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_participante_has_catalogoServicios_participante1` FOREIGN KEY (`idParticipante`) REFERENCES `participante` (`idparticipante`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.inscripcion: ~0 rows (approximately)
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.inscripcionAltas
DROP PROCEDURE IF EXISTS `inscripcionAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `inscripcionAltas`(IN `idPart` INT, IN `idserv` INT, IN `idInstruc` INT, IN `fechIni` DATE, IN `fechFin` DATE, IN `Coment` vaRCHAR(500), IN `InscripcCol` vaRCHAR(500))
BEGIN
insert into inscripcion values( null,idPart,idserv,idInstruc,fechIni,fechFin,Coment,InscripcCol);
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.inscripcionBajas
DROP PROCEDURE IF EXISTS `inscripcionBajas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `inscripcionBajas`(IN `idInscrip` INT)
BEGIN
delete from inscripcion where idInscripcion=idInscrip;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.inscripcionBuscarPor
DROP PROCEDURE IF EXISTS `inscripcionBuscarPor`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `inscripcionBuscarPor`()
BEGIN

END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.inscripcionConsultar
DROP PROCEDURE IF EXISTS `inscripcionConsultar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `inscripcionConsultar`()
BEGIN
select i.idInscripcion as 'Clave',i.idParticipante as 'Clave participante',i.idServicio as 'Clave Servicio',i.idInsctructor as 'Clave Instructor',i.fechaInicio as 'Fecha de inicio',i.fechaFin as 'Fecha de terminacion',i.Comentarios as 'Comentarios',i.Inscripcioncol as 'inscripcion col'  from inscripcion i limit 20;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.inscripcionModificar
DROP PROCEDURE IF EXISTS `inscripcionModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `inscripcionModificar`(IN `idInscrip` INT, IN `idPart` INT, IN `idInstr` INT, IN `idServ` INT, IN `fInicio` DATE, IN `fFin` DATE, IN `coment` VARCHAR(50), IN `insCol` VARCHAR(50))
BEGIN
update inscripcion  set idParticipante=idPart,idServicio=idServ,idInsctructor=idInstr,fechaInicio=fInicio,fechaFin=fFin,Comentarios=coment,Inscripcioncol=insCol  where idInscripcion=idInscrip;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.instructor
DROP TABLE IF EXISTS `instructor`;
CREATE TABLE IF NOT EXISTS `instructor` (
  `idinstructor` int(11) NOT NULL,
  `rutacurriculum` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idinstructor`),
  KEY `fkPrersona` (`idinstructor`),
  CONSTRAINT `fkPrersona` FOREIGN KEY (`idinstructor`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.instructor: ~2 rows (approximately)
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` (`idinstructor`, `rutacurriculum`) VALUES
	(207, NULL),
	(211, NULL);
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.instructorAltas
DROP PROCEDURE IF EXISTS `instructorAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `instructorAltas`(IN `idPers` INT, IN `Curr` vaRCHAR(300))
BEGIN
insert into instructor values (idPers,Curr);
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.instructorBajas
DROP PROCEDURE IF EXISTS `instructorBajas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `instructorBajas`(IN `idPers` INT)
BEGIN
delete from instructor where instructor.idinstructor=idPers;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.instructorBuscarId
DROP PROCEDURE IF EXISTS `instructorBuscarId`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `instructorBuscarId`(IN `idInst` INT)
BEGIN
select p.idpersona,p.nombre,p.aPaterno,p.aMaterno,p.fnac,p.edoCivil,p.email,p.rutaFoto,i.rutacurriculum from persona p, instructor i where p.idpersona=i.idinstructor and i.idinstructor=idInst;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.instructorConsutar
DROP PROCEDURE IF EXISTS `instructorConsutar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `instructorConsutar`()
BEGIN
select p.idpersona,p.nombre,p.aPaterno,p.aMaterno,p.fnac,p.edoCivil,p.email,p.rutaFoto,i.rutacurriculum from persona p, instructor i where p.idpersona=i.idinstructor;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.instructorCurriculum
DROP PROCEDURE IF EXISTS `instructorCurriculum`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `instructorCurriculum`(IN `idin` INT)
BEGIN

END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.instructorModificar
DROP PROCEDURE IF EXISTS `instructorModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `instructorModificar`(IN `idPers` INT)
BEGIN
update instructor  set rutaArchivo = idPers where idinstructor=idPers;
END//
DELIMITER ;


# Dumping structure for table empatiagamt.participante
DROP TABLE IF EXISTS `participante`;
CREATE TABLE IF NOT EXISTS `participante` (
  `idparticipante` int(11) NOT NULL,
  `idhistorial` int(11) DEFAULT NULL,
  PRIMARY KEY (`idparticipante`),
  KEY `personaPK` (`idparticipante`),
  KEY `pkHistorial` (`idhistorial`),
  CONSTRAINT `personaPK` FOREIGN KEY (`idparticipante`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `pkHistorial` FOREIGN KEY (`idhistorial`) REFERENCES `historialmedico` (`idhistorialMedico`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.participante: ~1 rows (approximately)
/*!40000 ALTER TABLE `participante` DISABLE KEYS */;
INSERT INTO `participante` (`idparticipante`, `idhistorial`) VALUES
	(208, 43);
/*!40000 ALTER TABLE `participante` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.ParticipanteAltas
DROP PROCEDURE IF EXISTS `ParticipanteAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ParticipanteAltas`(IN `idparticipante` INT)
BEGIN
set @ultimoHistorial = 0; #almacena el ultimo historial que se insertó
set @ultmaPersona=0; #se almacena el ultmo id en la tabla persona.

insert into historialmedico values(null,null,null);#agrega nuevo historial qeu se asignara al participante

select max(h.idhistorialMedico)into @ultimoHistorial from historialmedico h;#obtiene el id del historial que se almacenó en el paso anerior
select max(h.idpersona)into @ultmaPersona from persona h;

insert into participante values(@ultmaPersona,@ultimoHistorial);#guarda el registro de idpartcipante e historial generado para él

END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.ParticipanteBajas
DROP PROCEDURE IF EXISTS `ParticipanteBajas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ParticipanteBajas`(IN `pidParticipante` INT)
BEGIN

delete from participante where idparticipante =pidParticipante;

END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.ParticipanteBusquedaId
DROP PROCEDURE IF EXISTS `ParticipanteBusquedaId`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ParticipanteBusquedaId`(IN `id` INT)
BEGIN
select p.idpersona,p.nombre,p.aPaterno,p.aMaterno,p.fnac,p.edoCivil,p.email,p.rutaFoto,par.idhistorial 
from persona p, participante par
where p.idpersona=id and p.idpersona in(select idparticipante from participante)
group by p.idpersona;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.ParticipanteConsultar
DROP PROCEDURE IF EXISTS `ParticipanteConsultar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ParticipanteConsultar`()
BEGIN

select p.idpersona,p.nombre,p.aPaterno,p.aMaterno,p.fnac,p.edoCivil,p.email,p.rutaFoto, par.idhistorial from participante par, persona p where p.idpersona=par.idparticipante;

/*
idpersona
nombre
apaerno
amaterno
fnac
edocivil
email
rutafoto
idhistorial



select p.idpersona,p.nombre,p.aPaterno,p.aMaterno,p.fnac,
(year(curdate())-year(p.fnac)-)
(right ((curdate()- p.fnac),5) as 'Edad',

p.edoCivil,p.email,p.rutaFoto, par.idhistorial 
from participante par, persona p where p.idpersona=par.idparticipante;



*/


END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.ParticpanteBusqueda
DROP PROCEDURE IF EXISTS `ParticpanteBusqueda`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `ParticpanteBusqueda`(IN `valor` VARCHAR(50))
BEGIN
#select p.idpersona,p.nombre,p.aPaterno,p.aMaterno,p.fnac,p.edoCivil,p.email,p.rutaFoto 
#from persona p, participante par where p.nombre like concat("%",valor,"%") or p.aPaterno like concat("%",valor,"%") or p.aMaterno like concat("%",valor,"%") and p.idpersona=par.idparticipante limit 20;

#select * from persona where idpersona in(select idpersona from participante where
#nombre like concat("%",valor,"%") or aPaterno like concat("%",valor,"%") or aMaterno like concat("%",valor,"%"));

#select *from persona where idpersona in(select idparticipante from participante) and nombre like concat("%",valor,"%") or aPaterno like concat("%",valor,"%") or aMaterno like concat("%",valor,"%");

select p.idpersona,p.nombre,p.aPaterno,p.aMaterno,p.fnac,p.edoCivil,p.email,p.rutaFoto,par.idhistorial 
from persona p, participante par
where nombre like concat("%",valor,"%") or aPaterno like concat("%",valor,"%") or aMaterno like concat("%",valor,"%") and idpersona in(select idparticipante from participante)
group by p.idpersona;

END//
DELIMITER ;


# Dumping structure for table empatiagamt.persona
DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `aPaterno` varchar(45) DEFAULT NULL,
  `aMaterno` varchar(45) DEFAULT NULL,
  `fnac` date DEFAULT NULL,
  `edoCivil` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `rutaFoto` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.persona: ~3 rows (approximately)
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` (`idpersona`, `nombre`, `aPaterno`, `aMaterno`, `fnac`, `edoCivil`, `email`, `rutaFoto`) VALUES
	(207, 'jared', 'BUSTAMANTE', 'QUIÑONEZ', '1988-02-06', 'SOLTERO', 'jaredbusta@gmail.com', ''),
	(208, 'RODOLFO', 'SANCHEZ', 'TARAZON', '1988-02-06', 'DIVORCIADO', 'jaredbusta@gmail.com', ''),
	(211, 'RODOLFO', 'SANCHEZ', 'TARAZON', '1988-02-06', 'SOLTERO', 'asd@sada.dasd', '');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.PersonaAltas
DROP PROCEDURE IF EXISTS `PersonaAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `PersonaAltas`(IN `nom` vaRCHAR(50), IN `apat` vaRCHAR(50), IN `amat` vaRCHAR(50), IN `fna` daTE, IN `civil` VARCHAR(50), IN `email` vARCHAR(50), IN `ruta` VARCHAR(500))
BEGIN
insert into persona values(null,nom, apat, amat, fna, civil,  email, ruta);
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.PersonaBajas
DROP PROCEDURE IF EXISTS `PersonaBajas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `PersonaBajas`(IN `p_idpersona` INT)
BEGIN
delete from telefonos where idpersona=p_idpersona;
delete from persona where idpersona=p_idpersona;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.PersonaConsultar
DROP PROCEDURE IF EXISTS `PersonaConsultar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `PersonaConsultar`()
BEGIN
select p.idpersona,p.nombre,p.aPaterno,p.aMaterno,p.fnac,p.edoCivil,p.email,p.rutaFoto from  persona p;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.PersonaModificar
DROP PROCEDURE IF EXISTS `PersonaModificar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `PersonaModificar`(IN `p_nombre` vARCHAR(50), IN `p_aPaterno` vARCHAR(50), IN `p_aMaterno` vARCHAR(50), IN `p_fnac` daTE, IN `p_edoCivil` VARCHAR(50), IN `p_email` vARCHAR(50), IN `p_rutaFoto` VARCHAR(500), IN `p_idpersona` INT)
BEGIN
update persona set Nombre=p_nombre, APaterno=p_aPaterno, AMaterno=p_aMaterno,FNac=p_fnac,EdoCivil=p_edoCivil, email=p_email, Rutafoto=p_rutaFoto  where Idpersona=p_idpersona;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.PersonaUltima
DROP PROCEDURE IF EXISTS `PersonaUltima`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `PersonaUltima`()
BEGIN
select max(idpersona) from persona;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.SAgregarDatosImc
DROP PROCEDURE IF EXISTS `SAgregarDatosImc`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `SAgregarDatosImc`(IN `p_idhistorial` INT, IN `p_fecha` DATE, IN `p_altura` doublE, IN `p_imc` douBLE)
BEGIN
set @descripcion=" ";
select t.clasificacion into @descripcion from  tablapesos t where imc between t.menor and t.mayor; #determina que definición 

insert into datosimc values(null, p_idhistorial, p_fecha, p_altura,p_peso,p_imc,@descripcion);

END//
DELIMITER ;


# Dumping structure for table empatiagamt.tablapesos
DROP TABLE IF EXISTS `tablapesos`;
CREATE TABLE IF NOT EXISTS `tablapesos` (
  `idtablaPesos` int(11) NOT NULL AUTO_INCREMENT,
  `menor` double DEFAULT NULL,
  `mayor` double DEFAULT NULL,
  `clasificacion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idtablaPesos`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.tablapesos: ~7 rows (approximately)
/*!40000 ALTER TABLE `tablapesos` DISABLE KEYS */;
INSERT INTO `tablapesos` (`idtablaPesos`, `menor`, `mayor`, `clasificacion`) VALUES
	(1, 0, 16, 'desnutricion grado 3'),
	(2, 16, 17, 'desnutricion grado 2'),
	(3, 17, 18.5, 'desnutricion grado 1'),
	(4, 18.5, 25, 'normal'),
	(5, 25, 30, 'sobrepeso grado 1'),
	(6, 30, 40, 'sobrepeso grado 2'),
	(7, 40, 1000, 'sobrepeso grado 3');
/*!40000 ALTER TABLE `tablapesos` ENABLE KEYS */;


# Dumping structure for table empatiagamt.telefonos
DROP TABLE IF EXISTS `telefonos`;
CREATE TABLE IF NOT EXISTS `telefonos` (
  `idTelefonos` int(11) NOT NULL AUTO_INCREMENT,
  `idpersona` int(11) NOT NULL,
  `tipoTelefono` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTelefonos`),
  KEY `idpersona` (`idpersona`),
  CONSTRAINT `idpersona` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`idpersona`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

# Dumping data for table empatiagamt.telefonos: ~1 rows (approximately)
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` (`idTelefonos`, `idpersona`, `tipoTelefono`, `numero`) VALUES
	(59, 207, 'CELULAR', '6621818044');
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;


# Dumping structure for procedure empatiagamt.TelefonosAltas
DROP PROCEDURE IF EXISTS `TelefonosAltas`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `TelefonosAltas`(IN `tipo` VARCHAR(50), IN `numero` vaRCHAR(50), IN `idpersona` INT)
BEGIN
insert into telefonos values(null,idpersona,tipo,numero);
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.TelefonosBorrar
DROP PROCEDURE IF EXISTS `TelefonosBorrar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `TelefonosBorrar`(IN `p_idpersona` INT)
BEGIN
delete from telefonos where idpersona=p_idpersona;
END//
DELIMITER ;


# Dumping structure for procedure empatiagamt.TelefonosConsultar
DROP PROCEDURE IF EXISTS `TelefonosConsultar`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `TelefonosConsultar`(IN `p_idPersona` INT)
BEGIN
select * from telefonos where idpersona= p_idPersona;
END//
DELIMITER ;


# Dumping structure for trigger empatiagamt.triggerEliminarHistoriales
DROP TRIGGER IF EXISTS `triggerEliminarHistoriales`;
SET SESSION SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `triggerEliminarHistoriales` BEFORE DELETE ON `participante` FOR EACH ROW BEGIN

delete from datosimc where historialMedico_idhistorialMedico= old.idhistorial;
delete from historialmedico where idhistorialMedico= old.idhistorial;

END//
DELIMITER ;
SET SESSION SQL_MODE=@OLD_SQL_MODE;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
