SET serveroutput ON
DECLARE
CURSOR animes IS
    SELECT * FROM animes
   WHERE id <= 10;
   str_result VARCHAR2(50);

BEGIN
FOR a IN animes LOOP
   str_result := calc_Anime_runTime(a.duration, a.episodes);
   DBMS_OUTPUT.put_line(a.id || '______' ||a.name || '
   Duracion completa: ' || str_result);
END LOOP;
END;