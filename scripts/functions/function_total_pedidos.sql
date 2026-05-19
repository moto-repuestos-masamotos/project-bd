CREATE OR REPLACE FUNCTION total_pedidos()
RETURNS INT
AS $$
DECLARE
    total INT;
BEGIN

    SELECT COUNT(*)
    INTO total
    FROM pedido;

    RETURN total;

END;
$$ LANGUAGE plpgsql;