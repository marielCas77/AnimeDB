CREATE OR REPLACE PROCEDURE mostrar_usuarioEdad
IS
    returned_edad NUMBER := 0;
    
    CURSOR USERS IS 
        SELECT * FROM USERS;

BEGIN
    FOR u IN USERS LOOP
        IF u.birthday IS NOT NULL THEN
            returned_edad := calc_edad(u.birthday);
        ELSE
            returned_edad := NULL;
        END IF;

        DBMS_OUTPUT.put_line(u.id || ', ' || u.username || ', EDAD: ' || returned_edad);

        UPDATE users SET edad = returned_edad WHERE id = u.id;
    END LOOP;
    COMMIT;
END;
/
