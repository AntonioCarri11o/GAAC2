insert into carrera values
('dsm','Desarrollo de Software Multiplataoforma'),('dd','Diseño digital'),
('dmi','Diseño de Modas Industrial'),('ird','Infraestrucura de Redes');

insert into materia values
("001","Formacion Sociocultural III"), ("002","Ingles III"),("003","Matematicas"),
("004","Sistemas Operativos"), ("005","Base de datos para aplicaciones"),("006","Aplicaciones Web"),
("007","Calculo Diferencial"),("008","Probabilidad y estadística"),("009","Conmutacion de redes de datos"),
("010","Infraestrucutura de redes de datos"),("011","Mercadotecnia"),("012","Fotografia Digital"),
("013","Ilustracion II"),("014","Softwre CAD"),("015","Proceso Administrativo"),
("016","Costos"),("017","Fundamentos textiles II"),("018","Ilustracion de moda por computadora"),
("019","Metodos de confeccion"),("020","Sistemas de graduacion industrial"),("021","Metodologia de la investigacion"),
("022","Taller de confeccion TSU");
select * from materia;
insert into materia_carrera values
("DSM","001"),("DSM","002"),("DSM","004"),("DSM","005"),("DSM","006"),("DSM","007"),("DSM","008"),
("DD","001"),("DD","002"),("DD","011"),("DD","012"),("DD","013"),("DD","014"),("DD","015"),("DD","016"),
("DMI","001"),("DMI","002"),("DMI","003"),("DMI","017"),("DMI","018"),("DMI","019"),("DMI","020"),("DMI","021"),("DMI","022"),
("IRD","001"),("IRD","002"),("IRD","004"),("IRD","006"),("IRD","007"),("IRD","009"),("IRD","010");
select * from materia_carrera;

select * from docente;
select ID_Materia, Nombre from docente_has_materia inner join materia where ID=ID_Materia and Correo_Docente="Ejemplo@utez.edu.mx";
insert into docente_has_materia values("Ejemplo@utez.edu.mx","001");
select * from docente_has_materia;

select Nombre, ID_materia from materia_carrera inner join carrera where ID_carrera=ID and ID_materia="DSM";
select Nombre, ID_materia from materia_carrera inner join materia where ID_materia=ID and ID_carrera="DSM";