CREATE OR REPLACE PROCEDURE actualizar_stock(
    p_id_inventario INT,
    p_nueva_cantidad INT
)
LANGUAGE plpgsql
AS $$
BEGIN

    UPDATE inventario
    SET cantidad = p_nueva_cantidad
    WHERE id = p_id_inventario;

END;
$$;