/* Creacion tabla carrito cuando el cliente pide un trabajo*/
CREATE TABLE trabajador_realiza_trabajo(
    id_trabajo_to_realice INT AUTO_INCREMENT PRIMARY KEY,
    clientes_id INT, 
    trabajador_id INT,
    FOREIGN KEY (clientes_id) REFERENCES clientes (id_cliente),
    FOREIGN KEY (trabajador_id) REFERENCES trabajadores (id_trabajador)
);