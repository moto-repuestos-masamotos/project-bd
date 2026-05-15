CREATE TABLE pago (
    id INT PRIMARY KEY,
    factura_id INT NOT NULL,
    metodo_pago_id INT NOT NULL,
    fecha_pago DATE,
    valor DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (factura_id) REFERENCES factura(id),
    FOREIGN KEY (metodo_pago_id) REFERENCES metodo_pago(id)
);