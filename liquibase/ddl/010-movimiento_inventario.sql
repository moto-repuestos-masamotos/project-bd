CREATE TABLE movimiento_inventario (
    id INT PRIMARY KEY,
    inventario_id INT NOT NULL,
    tipo_movimiento_inventario_id INT NOT NULL,
    cantidad INT NOT NULL,
    fecha_movimiento DATE,

    FOREIGN KEY (inventario_id) REFERENCES inventario(id),
    FOREIGN KEY (tipo_movimiento_inventario_id)
        REFERENCES tipo_movimiento_inventario(id)
);