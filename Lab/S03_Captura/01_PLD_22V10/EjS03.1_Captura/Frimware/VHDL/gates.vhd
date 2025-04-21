
--"No copies y pegues sin pensar: analiza, inspírate y haz el tuyo. Así es como realmente aprendes."

-- ***********************************************************************
-- *   Copyright (C) 2025 by Jesús D. Garza Camarena                     *
-- *   jesus.garzacmn@uanl.edu.mx                                        *
-- *   Attribution-NonCommercial-ShareAlike 3.0 (CC-BY-NC-SA 3.0)        *
-- *   https://creativecommons.org/licenses/by-nc-sa/3.0/                *
-- *                                                                     *
-- *   Example S03.1 - Lab Practice #03 HDL - Logic Gates                *
-- *   Device: GAL22V10 / ATF22V10                                       *
-- *   Language: VHDL                                                    *
-- *   Revision: 1.0                                                     *
-- *   Date: 20/04/25                                                    *
-- ***********************************************************************

-- Nombre de la actividad:
-- Brigada : Día y hora
-- Nombres:
-- N.L. : Número de lista
-- Fecha:

-- Importación de librerías estándar
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Declaración de la entidad "compuertas"
ENTITY gates IS

    -- Entradas
    PORT (
        a    : IN  STD_LOGIC;
        b    : IN  STD_LOGIC;
        c    : IN  STD_LOGIC;

    -- Salidas
        and_out  : OUT STD_LOGIC;
        or_out   : OUT STD_LOGIC;
        nand_out : OUT STD_LOGIC;
        nor_out  : OUT STD_LOGIC;
        exor_out : OUT STD_LOGIC
    );

    -- Asignación de pines entrada/salida
    ATTRIBUTE LOC : STRING;
    -- Asignación de pines para dispositivos SPLD/CPLD
    ATTRIBUTE LOC OF a         : SIGNAL IS "P1";
    ATTRIBUTE LOC OF b         : SIGNAL IS "P2";
    ATTRIBUTE LOC OF c         : SIGNAL IS "P3";
    ATTRIBUTE LOC OF and_out   : SIGNAL IS "P23";
    ATTRIBUTE LOC OF or_out    : SIGNAL IS "P22";
    ATTRIBUTE LOC OF nand_out  : SIGNAL IS "P21";
    ATTRIBUTE LOC OF nor_out   : SIGNAL IS "P20";
    ATTRIBUTE LOC OF exor_out  : SIGNAL IS "P19";

END ENTITY gates;

-- Arquitectura del circuito lógico
ARCHITECTURE behavioral OF gates IS
BEGIN

    -- Asignaciones combinacionales usando operadores lógicos
    and_out  <= a AND b AND c;             -- And: Solo es '1' si a, b y c son '1'
    or_out   <= a OR b OR c;               -- Or: Es '1' si al menos una entrada es '1'
    nand_out <= NOT (a AND b AND c);       -- Nand: Negación de la operación AND
    nor_out  <= NOT (a OR b OR c);         -- Nor: Negación de la operación OR
    exor_out <= a XOR b XOR c;             -- Xor: Verdadero si hay un número impar de '1'

END ARCHITECTURE behavioral;

