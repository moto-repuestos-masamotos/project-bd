CREATE OR REPLACE FUNCTION total_inventario()
RETURNS INT
AS $$
DECLARE
    total INT;
BEGIN

    SELECT COUNT(*)
    INTO total
    FROM inventario;

    RETURN total;

END;
$$ LANGUAGE plpgsql;