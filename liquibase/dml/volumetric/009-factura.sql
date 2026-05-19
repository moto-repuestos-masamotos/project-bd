INSERT INTO factura (
    id,
    pedido_id,
    estado_factura_id,
    total,
    fecha_factura
)
VALUES
(101, 1, 1, 50000, CURRENT_DATE),
(102, 2, 1, 70000, CURRENT_DATE);
