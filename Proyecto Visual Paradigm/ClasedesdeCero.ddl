CREATE TABLE Personas (documento int(10) NOT NULL AUTO_INCREMENT, nombre varchar(45) NOT NULL, apellido varchar(45) NOT NULL, email varchar(150) NOT NULL UNIQUE, Rolesid int(10) NOT NULL, PRIMARY KEY (documento));
CREATE TABLE Roles (id int(10) NOT NULL AUTO_INCREMENT, rol varchar(50) NOT NULL UNIQUE, PRIMARY KEY (id));
CREATE TABLE Roles_Personas (Rolesid int(10) NOT NULL, Personasdocumento int(10) NOT NULL, PRIMARY KEY (Rolesid, Personasdocumento));
CREATE TABLE RolesPorPersonas (Rolesid int(10) NOT NULL, Personasdocumento int(10) NOT NULL, PRIMARY KEY (Rolesid, Personasdocumento));
ALTER TABLE RolesPorPersonas ADD CONSTRAINT FKRolesPorPe134312 FOREIGN KEY (Rolesid) REFERENCES Roles (id);
ALTER TABLE RolesPorPersonas ADD CONSTRAINT FKRolesPorPe484929 FOREIGN KEY (Personasdocumento) REFERENCES Personas (documento);
