CREATE OR REPLACE PROCEDURE actualizar_pago(
    p_id_pago INT,
    p_nuevo_valor NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN

    UPDATE pago
    SET valor = p_nuevo_valor
    WHERE id = p_id_pago;

END;
$$;