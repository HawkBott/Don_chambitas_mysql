/* Creacion tabla roles*/
CREATE TABLE roles (
    id_rol INT,
    name_rol VARCHAR (255)
)

/* Creacion tabla cuentas de registro*/
CREATE TABLE cuentas (
    id_cuenta INT,
    correo_electronico VARCHAR (255),
    my_password VARCHAR (255)
)

/* Creacion tabla countries*/
CREATE TABLE countries (
    id_country INT,
    name_country VARCHAR (255)
)

/* Creacion tabla profesiones*/
CREATE TABLE profesiones (
    id_profesion INT,
    name_profesion VARCHAR (255)
)

/* Creacion tabla oficios*/
CREATE TABLE oficios (
    id_oficio INT,
    name_oficio VARCHAR (255)
)