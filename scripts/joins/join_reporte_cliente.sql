SELECT
    c.id AS cliente_id,
    c.nombre AS cliente,
    p.id AS pedido_id,
    pr.nombre AS producto,
    dp.cantidad,
    f.total AS total_factura,
    mp.nombre AS metodo_pago,
    ep.nombre AS estado_pedido

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

JOIN estado_pedido ep
    ON p.estado_pedido_id = ep.id

LIMIT 10;