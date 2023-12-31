/* Creacion tabla cuentas de registro*/
CREATE TABLE cuentas (
    id_cuenta INT AUTO_INCREMENT PRIMARY KEY,
    correo_electronico VARCHAR (255),
    my_password VARCHAR (255)
);

/* Creacion tabla countries*/
CREATE TABLE countries (
    id_country INT AUTO_INCREMENT PRIMARY KEY,
    name_country VARCHAR (255)
)

/* Creacion tabla profesiones*/
CREATE TABLE profesiones (
    id_profesion INT AUTO_INCREMENT PRIMARY KEY,
    name_profesion VARCHAR (255)
);

/* Creacion de tabla datos educacion*/
CREATE TABLE datos_educacion (
    id_datos_educacion INT AUTO_INCREMENT PRIMARY KEY, 
    nombre_universidad VARCHAR(255),
    titulo_obtenido BLOB,
    year_graduation DATE,
    proyectos_destacados TEXT
);

/* Creacion de tabla residencia*/
CREATE TABLE tipo_residencia(
    id_tipo_residencia INT AUTO_INCREMENT PRIMARY KEY, 
    nombre_tipo_residencia VARCHAR (255)
);

/* Creacion de tabla tipo licencia*/
CREATE TABLE tipo_licencia(
    id_tipo_licencia INT AUTO_INCREMENT PRIMARY KEY, 
    nombre_tipo_licencia VARCHAR (255)
);

/* Creacion de tabla solicitar empleo*/
CREATE TABLE solitar_empleo(
    id_solicitar_empleo INT AUTO_INCREMENT PRIMARY KEY, 
    fecha DATE,
    sueldo_deseado VARCHAR (255)
);



