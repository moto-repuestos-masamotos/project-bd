SELECT
    c.nombre AS cliente,
    p.id AS pedido,
    pr.nombre AS producto,
    dp.cantidad,
    f.total,
    mp.nombre AS metodo_pago,
    ef.nombre AS estado_factura

FROM cliente c

JOIN pedido p
    ON c.id = p.cliente_id

JOIN detalle_pedido dp
    ON p.id = dp.pedido_id

JOIN producto pr
    ON dp.producto_id = pr.id

JOIN factura f
    ON p.id = f.pedido_id

JOIN pago pa
    ON f.id = pa.factura_id

JOIN metodo_pago mp
    ON pa.metodo_pago_id = mp.id

JOIN estado_factura ef
    ON f.estado_factura_id = ef.id

LIMIT 10;