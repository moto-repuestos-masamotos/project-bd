CREATE OR REPLACE FUNCTION validar_cantidad_inventario()
RETURNS TRIGGER
AS $$
BEGIN

    IF NEW.cantidad < 0 THEN
        NEW.cantidad = 0;
    END IF;

    RETURN NEW;

END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trg_validar_inventario
BEFORE INSERT OR UPDATE
ON inventario
FOR EACH ROW
EXECUTE FUNCTION validar_cantidad_inventario();