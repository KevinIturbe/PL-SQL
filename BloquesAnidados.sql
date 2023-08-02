DECLARE

    X NUMBER:=20; --Esto es una variable global
    Z NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('EN EL PRIMER BLOQUE');
    /*
        LOS BLOQUES ANIDADOS SON INDEPENDIENTES Y HEREDAN CARACTERÍSTICAS DE LOS
        BLOQUES QUE LOS CONTIENEN
    */
    DECLARE
        /*
        Las variables declaradas en el bloque hijo son locales.
        Son prepoderantes sobre el bloque padre si comparten el nombre
        */

        /*
        Las variables del bloque global pueden ser usadas por los bloques hijos
        pero no al revés.
        */
        X NUMBER:=10; --Esta es una variable local

    BEGIN
        Z:=55;
        DBMS_OUTPUT.PUT_LINE(Z);
    END;
END;/
