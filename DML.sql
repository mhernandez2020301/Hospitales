INSERT INTO Areas (nombreArea)
VALUES('Cardiologia');
INSERT INTO Areas (nombreArea)
VALUES('Infectologia');
INSERT INTO Areas (nombreArea)
VALUES('Urgencias');
INSERT INTO Areas (nombreArea)
VALUES('Ginecologia');
INSERT INTO Areas (nombreArea)
VALUES('Pedriatia');

UPDATE Areas
SET idAreas = 6 
WHERE 3;
DELETE FROM Areas
WHERE idAreas = '1';
DROP TABLE Areas; 
SELECT * FROM Areas;


INSERT INTO Cargos (nombreCargo)
VALUES ('Cirujano');
INSERT INTO Cargos (nombreCargo)
VALUES ('Anestesiologo');
INSERT INTO Cargos (nombreCargo)
VALUES ('Enfermera/o');
INSERT INTO Cargos (nombreCargo)
VALUES ('Doctor');
INSERT INTO Cargos (nombreCargo)
VALUES ('Ad. Redes');

UPDATE Cargos
SET idCargos = 6 
WHERE 3;
DELETE FROM Cargos
WHERE idCargos = '1';
DROP TABLE Cargos; 
SELECT * FROM Cargos;

INSERT INTO ResponsableTurno (nombreResponsable, apellidosResponsable, telefonoPersonal, Areas_idAreas, Cargos_idCargos)
VALUES ('Juan','Mata','55555656','1','5');
INSERT INTO ResponsableTurno (nombreResponsable, apellidosResponsable, telefonoPersonal, Areas_idAreas, Cargos_idCargos)
VALUES ('Pepe','Axpuac','54545555','2','4');
INSERT INTO ResponsableTurno (nombreResponsable, apellidosResponsable, telefonoPersonal, Areas_idAreas, Cargos_idCargos)
VALUES ('Dylan','Higueros','53535454','3','3');
INSERT INTO ResponsableTurno (nombreResponsable, apellidosResponsable, telefonoPersonal, Areas_idAreas, Cargos_idCargos)
VALUES ('Daniel','Reyes','52525353','4','2');
INSERT INTO ResponsableTurno (nombreResponsable, apellidosResponsable, telefonoPersonal, Areas_idAreas, Cargos_idCargos)
VALUES ('David','Coronado','51515252','5','1');
UPDATE ResponsableTurno
SET idResponsableTurno = 6 
WHERE 3;
DELETE FROM ResponsableTurno
WHERE idResponsableTurno = '1';
DROP TABLE ResponsableTurno; 
SELECT * FROM ResponsableTurno;

INSERT INTO Especialidad (nombreEspecialidad)
VALUES ('Soplos');
INSERT INTO Especialidad (nombreEspecialidad)
VALUES ('Fluidos');
INSERT INTO Especialidad (nombreEspecialidad)
VALUES ('Traumatología');
INSERT INTO Especialidad (nombreEspecialidad)
VALUES ('Tocologia');
INSERT INTO Especialidad (nombreEspecialidad)
VALUES ('1-12 anios');
UPDATE Especialidad
SET idEspecialidad = 6 
WHERE 3;
DELETE FROM Especialidad
WHERE idEspecialidad = '1';
DROP TABLE Especialidad; 
SELECT * FROM Especialidad;


INSERT INTO Horarios (horaInicio, horaFin)
VALUES ('2021/01/02 01:00:00' , '2021/01/02 16:00:00');
INSERT INTO Horarios (horaInicio, horaFin)
VALUES ('2021/01/02 07:00:00', '2021/01/02 16:00:00');
INSERT INTO Horarios (horaInicio, horaFin)
VALUES ('2021/01/02 09:00:00', '2021/01/02 16:00:00');
INSERT INTO Horarios (horaInicio, horaFin)
VALUES ('2021/01/02 08:00:00', '2021/01/02 16:00:00');
INSERT INTO Horarios (horaInicio, horaFin)
VALUES ('2021/01/02 01:00:00', '2021/01/02 19:00:00');
UPDATE Horarios
SET idHorarios = 6 
WHERE 3;
DELETE FROM Horarios
WHERE idHorarios = '1';
DROP TABLE Horarios; 
SELECT * FROM Horarios;

INSERT INTO Medicos (licenciaMedica, nombres, apellidos, horaEntrada, horaSalida, turnoMaximo, sexo)
VALUES ('123','Luis','Rabanne','2021/01/02 01:00:00','2021/01/02 16:00:00','24','Masculino');
INSERT INTO Medicos (licenciaMedica, nombres, apellidos, horaEntrada, horaSalida, turnoMaximo, sexo)
VALUES ('456','Alicia','Maravilla','2021/01/02 01:00:00','021/01/02 19:00:00','16','Femenino');
INSERT INTO Medicos (licenciaMedica, nombres, apellidos, horaEntrada, horaSalida, turnoMaximo, sexo)
VALUES ('789','Samantha','Hernandez','2021/01/02 01:00:00 ','021/01/02 16:00:00','8','Femenino');
INSERT INTO Medicos (licenciaMedica, nombres, apellidos, horaEntrada, horaSalida, turnoMaximo, sexo)
VALUES ('213','Casio','Lopez','2021/01/02 01:00:00','021/01/02 19:00:00','8','Masculino');
INSERT INTO Medicos (licenciaMedica, nombres, apellidos, horaEntrada, horaSalida, turnoMaximo, sexo)
VALUES ('546','Astrid','Yansi','2021/01/02 01:00:00 ','2021/01/03 01:00:00','8','Femenina');
UPDATE Medicos
SET idMedicos = 6 
WHERE 3;
DELETE FROM Medicos
WHERE idMedicos = '1';
DROP TABLE Medicos; 
SELECT * FROM Medicos;

INSERT INTO MedicoEspecialidad (idMedico, idespecialidad, codigohorario, Especialidad_idEspecialidad,Horarios_idHorarios, Medicos_idMedicos)
VALUES ('1','5', '1','5','1','2');
INSERT INTO MedicoEspecialidad (idMedico, idespecialidad, codigohorario, Especialidad_idEspecialidad,Horarios_idHorarios, Medicos_idMedicos)
VALUES ('2','4','2','4','2','3');
INSERT INTO MedicoEspecialidad (idMedico, idespecialidad, codigohorario, Especialidad_idEspecialidad,Horarios_idHorarios, Medicos_idMedicos)
VALUES ('3','3','3','3','3','4');
INSERT INTO MedicoEspecialidad (idMedico, idespecialidad, codigohorario, Especialidad_idEspecialidad,Horarios_idHorarios, Medicos_idMedicos)
VALUES ('4','2','4','2','4','5');
INSERT INTO MedicoEspecialidad (idMedico, idespecialidad, codigohorario, Especialidad_idEspecialidad,Horarios_idHorarios, Medicos_idMedicos)
VALUES ('5','1','5','1','5','1');
UPDATE MedicoEspecialidad
SET idMedicoEspecialidad = 6 
WHERE 3;
DELETE FROM MedicoEspecialidad
WHERE idMedicoEspecialidad = '1';
DROP TABLE MedicoEspecialidad; 
SELECT * FROM MedicoEspecialidad;

INSERT INTO Paciente (DPI, apellido, nombre, Fechadenacimiento, edad, direccion, ocupacion, sexo)
VALUES ('123456','Suarez','Leo','2000/05/01', 21,'5ta zona 7','Taxista','Mas');
INSERT INTO Paciente (DPI, apellido, nombre, Fechadenacimiento, edad, direccion, ocupacion, sexo)
VALUES ('456789','Juarez','David','2000/05/01',21,'7ma zona 7','Electricista','Mas');
INSERT INTO Paciente (DPI, apellido, nombre, Fechadenacimiento, edad, direccion, ocupacion, sexo)
VALUES ('43214','Lopez','Carol','2000/05/01',21,'9na san juan z 5','Compañia','Fem');
INSERT INTO Paciente (DPI, apellido, nombre, Fechadenacimiento, edad, direccion, ocupacion, sexo)
VALUES ('789265','Garcia','Jimena','2000/05/01',21,'5ta av zona 6','Doctora','Fem');
INSERT INTO Paciente (DPI, apellido, nombre, Fechadenacimiento, edad, direccion, ocupacion, sexo)
VALUES ('54564','Axpuac','Antonio', '2017/02/15' ,5,'4ta av zona 1','Verdulero','Mas');
UPDATE Paciente
SET idPaciente = 6 
WHERE 3;
DELETE FROM Paciente
WHERE idPaciente = '1';
DROP TABLE Paciente; 
SELECT * FROM Paciente;

INSERT INTO Turno (FechaTurno, FechaCita, ValorCita, CodigoMedicoEspecialidad, CodigoTurnoResponsable, CodigoPaciente, ResponsableTurno_idResponsableTurno,MedicoEspecialidad_idMedicoEspecialidad, Paciente_idPaciente)
VALUES ('18/05/2021','18/05/2021','10.00','5','1','1','3','5','3');
INSERT INTO Turno (FechaTurno, FechaCita, ValorCita, CodigoMedicoEspecialidad, CodigoTurnoResponsable, CodigoPaciente, ResponsableTurno_idResponsableTurno,MedicoEspecialidad_idMedicoEspecialidad, Paciente_idPaciente)
VALUES ('18/05/2021','18/05/2021','35.00','4','2','5','4','1','2');
INSERT INTO Turno (FechaTurno, FechaCita, ValorCita, CodigoMedicoEspecialidad, CodigoTurnoResponsable, CodigoPaciente, ResponsableTurno_idResponsableTurno,MedicoEspecialidad_idMedicoEspecialidad, Paciente_idPaciente)
VALUES ('18/05/2021','18/05/2021','28.00','3','3','4','5','2','1');
INSERT INTO Turno (FechaTurno, FechaCita, ValorCita, CodigoMedicoEspecialidad, CodigoTurnoResponsable, CodigoPaciente, ResponsableTurno_idResponsableTurno,MedicoEspecialidad_idMedicoEspecialidad, Paciente_idPaciente)
VALUES ('17/05/2021','18/05/2021','45.00','2','4','3','1','3','4');
INSERT INTO Turno (FechaTurno, FechaCita, ValorCita, CodigoMedicoEspecialidad, CodigoTurnoResponsable, CodigoPaciente, ResponsableTurno_idResponsableTurno,MedicoEspecialidad_idMedicoEspecialidad, Paciente_idPaciente)
VALUES ('16/05/2021','18/05/2021','50.00','1','5','2','2','4','5');
UPDATE Turno
SET CodigoTurno = 6 
WHERE 3;
DELETE FROM Turno
WHERE CodigoTurno = '1';
DROP TABLE Turno; 
SELECT * FROM Turno;

INSERT INTO TelefonosMedico (telefonosmedicopersonal, telefonotrabajo, idMedicos, Medicos_idMedicos)
VALUES ('51515252','27272828','1','5');
INSERT INTO TelefonosMedico (telefonosmedicopersonal, telefonotrabajo, idMedicos, Medicos_idMedicos)
VALUES ('52525353','26262727','2','4');
INSERT INTO TelefonosMedico (telefonosmedicopersonal, telefonotrabajo, idMedicos, Medicos_idMedicos)
VALUES ('53535454','25252626','3','3');
INSERT INTO TelefonosMedico (telefonosmedicopersonal, telefonotrabajo, idMedicos, Medicos_idMedicos)
VALUES ('54545555','24242525','4','2');
INSERT INTO TelefonosMedico (telefonosmedicopersonal, telefonotrabajo, idMedicos, Medicos_idMedicos)
VALUES ('55555656','23232424','5','1');
UPDATE TelefonosMedico
SET idTelefonosMedico = 6 
WHERE 3;
DELETE FROM TelefonosMedico
WHERE idTelefonosMedico = '1';
DROP TABLE TelefonosMedico; 
SELECT * FROM TelefonosMedico;

INSERT INTO ContactoUrgencia (nombres, apellidos, numeroContacto, idPaciente, Paciente_idPaciente)
VALUES ('Juana','Pancha','5555555','1','5');
INSERT INTO ContactoUrgencia (nombres, apellidos, numeroContacto, idPaciente, Paciente_idPaciente)
VALUES ('Cubana','Yansi','5454545','2','4');
INSERT INTO ContactoUrgencia (nombres, apellidos, numeroContacto, idPaciente, Paciente_idPaciente)
VALUES ('Maria','Caal','53535353','5','3');
INSERT INTO ContactoUrgencia (nombres, apellidos, numeroContacto, idPaciente, Paciente_idPaciente)
VALUES ('Edward','Matias','52525252','3','2');
INSERT INTO ContactoUrgencia (nombres, apellidos, numeroContacto, idPaciente, Paciente_idPaciente)
VALUES ('Dylan','Herrera','51515151','4','1');
UPDATE ContactoUrgencia
SET idContactoUrgencia = 6 
WHERE 3;
DELETE FROM ContactoUrgencia
WHERE idContactoUrgencia = '1';
DROP TABLE ContactoUrgencia; 
SELECT * FROM ContactoUrgencia;