CREATE OR REPLACE FUNCTION total_clientes()
RETURNS INT
AS $$
DECLARE
    total INT;
BEGIN

    SELECT COUNT(*)
    INTO total
    FROM cliente;

    RETURN total;

END;
$$ LANGUAGE plpgsql;