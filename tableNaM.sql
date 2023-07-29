/* Creacion tabla carrito cuando el cliente pide un trabajo*/
CREATE TABLE solicitar_servicio(
    id_solicitud INT AUTO_INCREMENT PRIMARY KEY,
    clientes_id INT, 
    trabajador_id INT,
    FOREIGN KEY (trabajador_id) REFERENCES trabajadores (id_trabajador)
);