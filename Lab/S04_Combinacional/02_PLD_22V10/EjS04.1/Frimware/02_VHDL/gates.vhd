-- "NO COPIES Y PEGUES SIN PENSAR: ANALIZA, INSPÍRATE Y HAZ EL TUYO. ASÍ ES COMO REALMENTE APRENDES."

-- ***********************************************************************
-- *   Copyright (C) 2025 by Jesús D. Garza Camarena                     *
-- *   jesus.garzacmn@uanl.edu.mx                                        *
-- *   Attribution-NonCommercial-ShareAlike 3.0 (CC-BY-NC-SA 3.0)        *
-- *   https://creativecommons.org/licenses/by-nc-sa/3.0/                *
-- *                                                                     *
-- *   Example S0 - Lab Practice #0                                      *
-- *   Device: GAL22V10 / ATF22V10                                       *
-- *   Language: VHDL                                                    *
-- *   Revision: 1.1                                                     *
-- *   Date: 21/04/25                                                    *
-- ***********************************************************************

-- NOMBRE DE LA ACTIVIDAD:
-- BRIGADA : DÍA Y HORA
-- NOMBRES:
-- N.L. : NÚMERO DE LISTA
-- FECHA:

-- LIBRERÍAS
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- ENTIDAD PRINCIPAL
ENTITY combinatorial IS
    PORT (
        a, b, c, d : IN  STD_LOGIC;
        f1         : OUT STD_LOGIC;  -- FUNCION SOP
        f2         : OUT STD_LOGIC   -- FUNCION POS
    );

    -- ASIGNACIÓN DE PINES
    ATTRIBUTE LOC : STRING;
    ATTRIBUTE LOC OF a  : SIGNAL IS "P1";
    ATTRIBUTE LOC OF b  : SIGNAL IS "P2";
    ATTRIBUTE LOC OF c  : SIGNAL IS "P3";
    ATTRIBUTE LOC OF d  : SIGNAL IS "P4";
    ATTRIBUTE LOC OF f1 : SIGNAL IS "P23";
    ATTRIBUTE LOC OF f2 : SIGNAL IS "P21";
END ENTITY;

-- ARQUITECTURA
ARCHITECTURE behavioral OF combinatorial IS
BEGIN

    -- F1(A,B,C,D) = A’B C’D + B’CD + AD’
    f1 <= (NOT a AND b AND NOT c AND d) OR
          (NOT b AND c AND d) OR
          (a AND NOT d);

    -- F2(A,B,C,D) = (A + B + C’ + D)(A’ + C + D)(B’ + D’)
    f2 <= (a OR b OR NOT c OR d) AND
          (NOT a OR c OR d) AND
          (NOT b OR NOT d);

END ARCHITECTURE behavioral;

