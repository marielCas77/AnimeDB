CREATE OR REPLACE FUNCTION calc_edad(fecha_nac DATE)
RETURN NUMBER
IS
    edad NUMBER;
BEGIN
    IF fecha_nac IS NULL THEN
        RETURN NULL;
    END IF;
    edad := TRUNC(MONTHS_BETWEEN(SYSDATE, fecha_nac) / 12);
    RETURN edad;
END;
/
