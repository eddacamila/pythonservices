create database bd_hosp;
use bd_hosp;

-- -----------------------------------------------------
-- Table `localidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `localidades` (
  `idlocalidad` INT(2) NOT NULL,
  `nomloc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idlocalidad`));


-- -----------------------------------------------------
-- Table `hospitales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitales` (
  `idHospital` INT(20) NOT NULL,
  `nombre` VARCHAR(250) NOT NULL,
  `tel` VARCHAR(50) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `localidades_idlocalidad` INT NOT NULL,
  PRIMARY KEY (`idHospital`),
  CONSTRAINT `fk_Hospital_localidades`
    FOREIGN KEY (`localidades_idlocalidad`)
    REFERENCES `localidades` (`idlocalidad`));

INSERT INTO `localidades` (`idlocalidad`,`nomloc`) VALUES (1,'Chapinero');
INSERT INTO `localidades` (`idlocalidad`,`nomloc`) VALUES (2,'Usaquen');
INSERT INTO `localidades` (`idlocalidad`,`nomloc`) VALUES (3,'Santafé');
INSERT INTO `localidades` (`idlocalidad`,`nomloc`) VALUES (4,'Los martires');
INSERT INTO `localidades` (`idlocalidad`,`nomloc`) VALUES (5,'Engativa');
INSERT INTO `localidades` (`idlocalidad`,`nomloc`) VALUES (6,'Suba');
INSERT INTO `localidades` (`idlocalidad`,`nomloc`) VALUES (7,'Barrios Unidos');
INSERT INTO `localidades` (`idlocalidad`,`nomloc`) VALUES (8,'San Cristobal');
INSERT INTO `localidades` (`idlocalidad`,`nomloc`) VALUES (9,'Fontibón');
INSERT INTO `localidades` (`idlocalidad`,`nomloc`) VALUES (10,'Usme');
INSERT INTO `localidades` (`idlocalidad`,`nomloc`) VALUES (11,'Teusaquillo');


INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (800006509,'COUNTRY SCAN LTDA','6449201','Kra16A#8237',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900380757,'EFI CIENCIA OCUPACIONAL LTDA','7551993 7551994','Kra20A#7209',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (800231602,'SOCIEDAD DE CIRUGIA OCULAR S A','6257723','AVCLL134#7B83',2);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900355438,'OXIVIDAS SAS','4672265 - 3142954946','CRA12N.7132',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (800180176,'CENTRO DE DIAGNOSTICO Y TRATAMIENTO CENDIATRA SOCIEDAD POR ACCIONES SIMPLIFICADAS CENDIATRA SAS','2826817','CLL19#350',3);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900215198,'BUITRAGO & MORALES SAS','2770331','Kra30#538',4);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (860353671,'CENTRO NEUROLOGICO DE BOGOTA LIMITADA','6108069','Kra16#8295',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900073623,'BLUE LASER MEDICINA INTEGRAL S.A','2951570 - 3144425643','CLL52#71D37',5);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900423879,'MundoDent Clínicas Odontológicas S.A.S','4400207','Kra112A#75B05',6);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900162688,'FORJA EMPRESAS SAS','7447050 - 3002083932','TV21#9871',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900181148,'UNIDAD DE DIAGNOSTICO ECOGRAFICO FONTIBON I P S SOCIEDAD LIMITADA SU SIGLA ES UDEF I P S LTDA','4185063','Kra99#16jBis31',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900752669,'CENTRO ASISTENCIAL DOMICILIARIO S.A.S - SIGLA CENAS S.A.S','3156472','Kra30#63F57',7);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900285393,'OPERADORA DE CLINICAS Y hospitales S.A.OC&H','7 051700 - 7 051708','CLL90#1643',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900281029,'City Ambulancias S A S','5470631 5478148','CLL77#5823',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (860034503,'FUNDACION NIÑEZ Y DESARROLLO FUNDACION FND COLOMBIA','3108260','AK60#6363',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (800111969,'LABORATORIO CLINICO LA CAROLINA S.A','6581616','AC127#1412',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900135971,'SALUD VISUAL EMPRESARIAL OCUPACIONAL EU','3365407','CLL19#881',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900394968,'CENTRO DE ACONDICIONAMIENTO Y PREPARACION FISICA WELLNESS CENTER SAS','3130284-14','CLL69#523',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (830025766,'ALIRIO GUTIERREZ MILLAN Y CIA SAS UNIDAD DE ATENCIÓN PRIMARIA DARSALUD','2657599','KR78K#33A76SUR',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900204085,'BUITRAGO & GRANDAS SAS','2 72 64 84','CLL74CSUR#034',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900171194,'DENTAL LINE E.U.','7282258','TRANV34ABIS#4067SUR',8);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900847386,'La dentisteria Clinica de Especialistas S.A.S','5471062-3144159983','Cra80C#24C19',9);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900496494,'MEDPLUS CENTRO DE RECUPERACION INTEGRAL SAS','7424943','Kra14#93b15',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900173431,'UNIDAD MEDICA Y ODONTOLOGICA SANTA PILAR E.U.','7612926','KR1474C03SUR',10);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (800207897,'UNIDAD DERMATOLOGICA DE FOTOTERAPIA SAS','2566374','CL93B#1392',2);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900358077,'HAIR DOCTORS AND HAIR HEALTH S.A.S','4779152','CLL108#17a68',2);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900867338,'UNIDAD MEDICA INTEGRAL MOTUS IPS SAS','4975736','CL24A#81C90',9);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900473087,'IPS BIENESTAR EN CASA SAS','6636159-3167449281-3185166653','CLL24#72B5',9);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (830007229,'CORVESALUD S.A.S','7563900 - 3022693192','KR13#3737PI',1);
INSERT INTO `hospitales` (`idHospital`,`nombre`,`tel`,`direccion`,`localidades_idlocalidad`) VALUES (900380150,'EVALUA SALUD IPS SAS','8012047','CRA45A#9356',11);
