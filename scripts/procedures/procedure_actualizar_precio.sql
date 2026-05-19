CREATE OR REPLACE PROCEDURE actualizar_precio_producto(
    p_id_producto INT,
    p_nuevo_precio NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN

    UPDATE producto
    SET precio = p_nuevo_precio
    WHERE id = p_id_producto;

END;
$$;