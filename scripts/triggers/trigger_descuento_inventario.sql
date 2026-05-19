CREATE OR REPLACE FUNCTION asignar_fecha_pedido()
RETURNS TRIGGER
AS $$
BEGIN

    IF NEW.fecha_pedido IS NULL THEN
        NEW.fecha_pedido = CURRENT_DATE;
    END IF;

    RETURN NEW;

END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trg_fecha_pedido
BEFORE INSERT ON pedido
FOR EACH ROW
EXECUTE FUNCTION asignar_fecha_pedido();