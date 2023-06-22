
/* Falta por definir el tipo de dato del telefono*/

CREATE TABLE usuarios (
    id_usuario INT,
    nombre VARCHAR (255),
    apellido_paterno VARCHAR (255),
    apellido_materno VARCHAR (255),
    edad INT,
    telefono INT,
    rol_id INT
    cuenta_id INT,
    address_id INT
)

/* Creacion tabla clientes*/
CREATE TABLE clientes(
    id_cliente INT,
    rol_id INT
)

/* Creacion tabla trabajadores*/
CREATE TABLE trabajadores(
    id_trabajador INT,
    rol_id INT,
    servicio_id INT
)

/* Creacion tabla servicios*/
CREATE TABLE servicios (
    id_servicio INT,
    oficio_id INT
    profesion_id INT
)

/* Creacion tabla addresses*/
CREATE TABLE addresses (
    id_address INT,
    calle VARCHAR (255),
    numero_exterior VARCHAR (255),
    numero_interior VARCHAR (255),
    country_id INT
)

/* Creacion tabla estado o provincia*/
CREATE TABLE estado_o_provincia (
    id_estado_o_provincia INT,
    name_estado_o_provincia VARCHAR (255),
    country_id INT
)

/* Creacion tabla codigo postal*/
CREATE TABLE codigo_postal (
    id_codigo_postal INT,
    codigo_postal INT,
    estado_o_provincia_id INT
)
