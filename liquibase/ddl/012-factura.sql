CREATE TABLE factura (
    id INT PRIMARY KEY,
    pedido_id INT NOT NULL UNIQUE,
    estado_factura_id INT NOT NULL,
    numero_factura VARCHAR(50) NOT NULL UNIQUE,
    fecha_factura DATE,
    total DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (pedido_id) REFERENCES pedido(id),
    FOREIGN KEY (estado_factura_id) REFERENCES estado_factura(id)
);