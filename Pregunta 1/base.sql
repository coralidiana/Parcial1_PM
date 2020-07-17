CREATE TABLE materia(
	ci Primary Key varchar (50),

	nota int(10),
	materia varchar(50),
	foreign key (ci) references identificado(ci)
)

INSERT INTO `materia` (`id`, `ci`, `nota`, `materia`) VALUES ('', NULL, NULL, NULL)

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('1','11071219', '61','inf124');

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('2','11071219', '61','inf134');

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('3','1122334', '70','inf124');

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('4','1122334', '72','inf134');

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('5','223344', '80','inf124');

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('6','223344', '61','inf134');

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('7','7790123', '61','inf124');

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('8','7790123', '61','inf134');


INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('9','445566', '61','inf124');

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('10','445566', '61','inf134');

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('11','4567890', '61','inf124');

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('12','4567890', '61','inf134');

INSERT INTO `materia` (`id`,`ci`, `nota`, `materia`) VALUES ('13','667788', '61','inf124');

INSERT INTO `materia` ('id',`ci`, `nota`, `materia`) VALUES ('14','667788', '61','inf134');

SELECT COUNT(DISTINCT m.id) as Aprobados, i.codlugar as Region FROM materia m , identificado i WHERE m.nota >50 GROUP by i.codlugar