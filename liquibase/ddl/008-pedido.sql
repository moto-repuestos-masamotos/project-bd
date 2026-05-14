CREATE TABLE pedido (
    id INT PRIMARY KEY,
    cliente_id INT NOT NULL,
    estado_pedido_id INT NOT NULL,
    fecha_pedido DATE,

    FOREIGN KEY (cliente_id) REFERENCES cliente(id),
    FOREIGN KEY (estado_pedido_id) REFERENCES estado_pedido(id)
);