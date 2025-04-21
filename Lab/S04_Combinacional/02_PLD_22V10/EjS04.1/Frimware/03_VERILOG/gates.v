// "No copies y pegues sin pensar: analiza, insp�rate y haz el tuyo. As� es como realmente aprendes."

/**************************************************************************
 *   Copyright (C) 2025 by Jes�s D. Garza Camarena                        *
 *   jesus.garzacmn@uanl.edu.mx                                           *
 *   Attribution-NonCommercial-ShareAlike 3.0 (CC-BY-NC-SA 3.0)           *
 *   https://creativecommons.org/licenses/by-nc-sa/3.0/                   *
 *                                                                        *
 *   Example S04.2 - Lab Practice #04 HDL - Logic Gates + SOP & POS       *
 *   Device: GAL22V10 / ATF22V10                                          *
 *   Language: Verilog                                                    *
 *   Revision: 1.0                                                        *
 *   Date: 21/04/25                                                       *
 **************************************************************************/

// Nombre de la actividad:
// Brigada : D�a y hora
// Nombres:
// N.L. : N�mero de lista
// Fecha:

// M�dulo de compuertas l�gicas extendido con ecuaciones SOP y POS

module combinatorial 
(
    // Inputs
    input  wire a        /* synthesis loc = "P1"  */, // Entrada a conectada al pin P1
    input  wire b        /* synthesis loc = "P2"  */, // Entrada b conectada al pin P2
    input  wire c        /* synthesis loc = "P3"  */, // Entrada c conectada al pin P3
    input  wire d        /* synthesis loc = "P4"  */, // Entrada d conectada al pin P4

    // Outputs
    output wire f1       /* synthesis loc = "P23" */, // Salida de la funci�n SOP
    output wire f2       /* synthesis loc = "P21" */  // Salida de la funci�n POS
);


    // Funci�n SOP: f1(a,b,c,d) = a'b c'd + b'c d + a d'
    assign f1 = (~a & b & ~c & d) | (~b & c & d) | (a & ~d);

    // Funci�n POS: f2(a,b,c,d) = (a + b + c'+ d)(a'+ c + d)(b'+ d')
    assign f2 = (a | b | ~c | d) & (~a | c | d) & (~b | ~d);

endmodule

