CREATE OR REPLACE FUNCTION calc_Anime_runTime(tiempo NUMBER, eps NUMBER)
RETURN VARCHAR2 
IS 
    total NUMBER := 0;
    str_runTime VARCHAR2(100);
BEGIN
    -- calcula el tiempo total de un anime en minutos
    IF eps IS NOT NULL THEN
        total := tiempo * eps;
        str_runTime := 'El anime dura un total de ' || FLOOR(total/60) || ' horas y ' || MOD(total,60) || ' minutos';
    ELSE
        str_runTime := 'El anime aun no ha terminado de transmitirse!';
    END IF;
    
    RETURN str_runTime;
END;
/
