CREATE TABLE usuarios (
    id_usuario INT,
    datos_usuario INT,
    rol_id INT
)

CREATE TABLE clientes(
    id_cliente INT,
    rol_id INT
)


CREATE TABLE trabajadores(
    id_trabajador INT,
    rol_id INT,
    servicio_id INT
)


/* Falta por definir el tipo de dato del telefono*/

CREATE TABLE datos_usuario(
    id_datos_usuario INT,
    nombre VARCHAR (255),
    apellido_paterno VARCHAR (255),
    apellido_materno VARCHAR (255),
    genero VARCHAR (255),
    edad INT, 
    telefono VARCHAR (255),
    cuenta_id INT,
    direccion_id INT
)