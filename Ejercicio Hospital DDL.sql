CREATE DATABASE IF NOT EXISTS `DBHospitalInfectologia#2020301`;

USE `DBHospitalInfectologia#2020301`;

CREATE TABLE IF NOT EXISTS Areas (
  idAreas INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombreArea VARCHAR(45) NOT NULL
  );

CREATE TABLE IF NOT EXISTS Cargos (
  idCargos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombreCargo VARCHAR(45) NOT NULL
  );

CREATE TABLE IF NOT EXISTS ResponsableTurno (
  idResponsableTurno INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombreResponsable VARCHAR(45) NOT NULL,
  apellidosResponsable VARCHAR(45) NOT NULL,
  telefonoPersonal VARCHAR(45) NOT NULL,
  Areas_idAreas INT NOT NULL,
  Cargos_idCargos INT NOT NULL,
  CONSTRAINT fk_ResponsableTurno_Areas
    FOREIGN KEY (Areas_idAreas) REFERENCES Areas (idAreas),
  CONSTRAINT fk_ResponsableTurno_Cargos1
    FOREIGN KEY (Cargos_idCargos) REFERENCES Cargos (idCargos)
);
      
CREATE TABLE IF NOT EXISTS Especialidad (
  idEspecialidad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombreEspecialidad VARCHAR(45) NOT NULL
);
  
CREATE TABLE IF NOT EXISTS Horarios (
  idHorarios INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  horaInicio DATE NOT NULL,
  horaFin DATE NOT NULL,
  lunes TINYINT NULL,
  martes TINYINT NULL,
  miercoles TINYINT NULL,
  jueves TINYINT NULL,
  viernes TINYINT NULL
);

CREATE TABLE IF NOT EXISTS Medicos (
  idMedicos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  licenciaMedica INT NOT NULL,
  nombres VARCHAR(100) NOT NULL,
  apellidos VARCHAR(100) NOT NULL,
  horaEntrada DATETIME NOT NULL,
  horaSalida DATETIME NOT NULL,
  turnoMaximo INT NOT NULL,
  sexo VARCHAR(20) NOT NULL
  );

CREATE TABLE IF NOT EXISTS MedicoEspecialidad (
  idMedicoEspecialidad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  idMedico INT NOT NULL,
  idespecialidad INT NOT NULL,
  codigohorario INT NOT NULL,
  Especialidad_idEspecialidad INT NOT NULL,
  Horarios_idHorarios INT NOT NULL,
  Medicos_idMedicos INT NOT NULL,
  CONSTRAINT fk_MedicoEspecialidad_Especialidad
    FOREIGN KEY (Especialidad_idEspecialidad) REFERENCES Especialidad (idEspecialidad),
  CONSTRAINT fk_MedicoEspecialidad_Horarios1
    FOREIGN KEY (Horarios_idHorarios) REFERENCES Horarios (idHorarios),
  CONSTRAINT fk_MedicoEspecialidad_Medicos
    FOREIGN KEY (Medicos_idMedicos) REFERENCES Medicos (idMedicos)
    );


CREATE TABLE IF NOT EXISTS Paciente (
  idPaciente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  DPI VARCHAR(45) NULL,
  apellido VARCHAR(45) NULL,
  nombre VARCHAR(45) NULL,
  Fechadenacimiento DATE NULL,
  edad INT NULL,
  direccion VARCHAR(100) NULL,
  ocupacion VARCHAR(45) NULL,
  sexo VARCHAR(20) NULL
  );


CREATE TABLE IF NOT EXISTS Turno (
  CodigoTurno  INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  FechaTurno VARCHAR(45) NULL,
  FechaCita  VARCHAR(45) NULL,
  ValorCita  DECIMAL(10,2) NULL,
  CodigoMedicoEspecialidad VARCHAR(45) NULL,
  CodigoTurnoResponsable VARCHAR(45) NULL,
  CodigoPaciente VARCHAR(45) NULL,
  ResponsableTurno_idResponsableTurno INT NOT NULL,
  MedicoEspecialidad_idMedicoEspecialidad INT NOT NULL,
  Paciente_idPaciente INT NOT NULL,
  CONSTRAINT Fk_Turno_ResponsableTurno1
    FOREIGN KEY (ResponsableTurno_idResponsableTurno) REFERENCES ResponsableTurno (idResponsableTurno),
  CONSTRAINT fk_Turno_MedicoEspecialidad1
    FOREIGN KEY (MedicoEspecialidad_idMedicoEspecialidad) REFERENCES MedicoEspecialidad (idMedicoEspecialidad),
  CONSTRAINT fk_Turno_Paciente1
    FOREIGN KEY (Paciente_idPaciente) REFERENCES Paciente (idPaciente)
);

CREATE TABLE IF NOT EXISTS TelefonosMedico (
  idTelefonosMedico INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  telefonosmedicopersonal VARCHAR(15) NULL,
  telefonotrabajo VARCHAR(15) NULL,
  idMedicos INT NULL,
  Medicos_idMedicos INT NOT NULL,
  CONSTRAINT fk_TelefonosMedico_Medicos1
    FOREIGN KEY (Medicos_idMedicos) REFERENCES Medicos (idMedicos)
);

CREATE TABLE IF NOT EXISTS ContactoUrgencia (
  idContactoUrgencia INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombres VARCHAR(45) NULL,
  apellidos VARCHAR(45) NULL,
  numeroContacto VARCHAR(45) NULL,
  idPaciente INT NULL,
  Paciente_idPaciente INT NOT NULL,
  CONSTRAINT fk_ContactoUrgencia_Paciente1
    FOREIGN KEY (Paciente_idPaciente) REFERENCES Paciente (idPaciente)
);