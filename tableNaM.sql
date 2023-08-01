
/* Creacion de tabla solicitar servicio*/
CREATE TABLE solicitar_servicio(
    id_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    trabajador_id INT
    FOREIGN KEY (cliente_id) REFERENCES clientes (id_cliente)
    FOREIGN KEY (trabajador_id) REFERENCES trabajadores (id_trabajador)
);