/*
    Visualizar iniciales de un nombre
        • Crea un bloque PL/SQL con tres variables VARCHAR2:
            o Nombre
            o apellido1
            o apellido2
        • Debes visualizar las iniciales separadas por puntos.
        • Además siempre en mayúscula
        • Por ejemplo alberto pérez García debería aparecer--> A.P.G
*/

SET SERVEROUTPUT ON

DECLARE
    NOMBRE VARCHAR2(20):='kevin';
    APELLIDO VARCHAR2(20):= 'santana';
    APELLIDO2 VARCHAR2(20):= 'iturbe';
BEGIN

    DBMS_OUTPUT.PUT_LINE(UPPER(SUBSTR(NOMBRE,1,1)||'.'||SUBSTR(APELLIDO,1,1)||'.'||SUBSTR(APELLIDO2,1,1)));

END;
/

/*
    Averiguar el nombre del día que naciste, por ejemplo "Martes"
        • PISTA (Función TO_CHAR)
*/
DECLARE

    FECHA DATE:='02-03-1996';

BEGIN

    DBMS_OUTPUT.PUT_LINE(TO_CHAR(FECHA,'DAY'));

END;
/

