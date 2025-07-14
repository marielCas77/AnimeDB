CREATE OR REPLACE PROCEDURE anime_recibido
IS
    var1 NUMBER;  -- Recommended
    var2 NUMBER;  -- Mixed Feelings
    var3 NUMBER;  -- Not Recommended

    CURSOR animes IS 
        SELECT id, name FROM animes;

BEGIN
    FOR a IN animes LOOP

        var1 := 0;
        var2 := 0;
        var3 := 0;

        -- Contar cuántas veces se recomendó el anime
        SELECT 
            COUNT(CASE WHEN r2.name = 'Recommended' THEN 1 END),
            COUNT(CASE WHEN r2.name = 'Mixed Feelings' THEN 1 END),
            COUNT(CASE WHEN r2.name = 'Not Recommended' THEN 1 END)
        INTO var1, var2, var3
        FROM reviews r
        INNER JOIN recommendations r2 ON r.recommendation_id = r2.id
        WHERE r.anime_id = a.id;

        IF var1 >= var2 AND var1 >= var3 THEN
            DBMS_OUTPUT.put_line(a.id || ' - ' || a.name || ': El anime fue bien recibido');
        ELSIF var2 >= var1 AND var2 >= var3 THEN
            DBMS_OUTPUT.put_line(a.id || ' - ' || a.name || ': El anime tuvo un recibimiento mixto');
        ELSE
            DBMS_OUTPUT.put_line(a.id || ' - ' || a.name || ': El anime no fue bien recibido');
        END IF;

    END LOOP;
END;
/
