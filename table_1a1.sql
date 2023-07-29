/* Creacion tabla roles*/
CREATE TABLE roles (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    name_rol VARCHAR (255)
)

/* Creacion tabla cuentas de registro*/
CREATE TABLE cuentas (
    id_cuenta INT AUTO_INCREMENT PRIMARY KEY,
    correo_electronico VARCHAR (255),
    my_password VARCHAR (255)
)

/* Creacion tabla countries*/
CREATE TABLE countries (
    id_country INT AUTO_INCREMENT PRIMARY KEY,
    name_country VARCHAR (255)
)

/* Creacion tabla profesiones*/
CREATE TABLE profesiones (
    id_profesion INT AUTO_INCREMENT PRIMARY KEY,
    name_profesion VARCHAR (255)
)



