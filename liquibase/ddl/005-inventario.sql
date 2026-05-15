CREATE TABLE inventario (
    id INT PRIMARY KEY,
    producto_id INT NOT NULL UNIQUE,
    cantidad INT NOT NULL,
    fecha_actualizacion DATE,

    FOREIGN KEY (producto_id) REFERENCES producto(id)
);