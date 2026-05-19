CREATE OR REPLACE FUNCTION asignar_fecha_factura()
RETURNS TRIGGER
AS $$
BEGIN

    IF NEW.fecha_factura IS NULL THEN
        NEW.fecha_factura = CURRENT_DATE;
    END IF;

    RETURN NEW;

END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trg_fecha_factura
BEFORE INSERT ON factura
FOR EACH ROW
EXECUTE FUNCTION asignar_fecha_factura();