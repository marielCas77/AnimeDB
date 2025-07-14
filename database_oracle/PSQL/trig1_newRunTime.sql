CREATE OR REPLACE TRIGGER trg_calc_total_runtime
BEFORE INSERT OR UPDATE ON animes
FOR EACH ROW
BEGIN

    :NEW.total_runtime := calc_Anime_runTime(:NEW.duration, :NEW.episodes);

END;
/
