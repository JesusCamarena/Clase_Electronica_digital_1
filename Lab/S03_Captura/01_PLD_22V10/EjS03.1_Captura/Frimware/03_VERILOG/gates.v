
// "No copies y pegues sin pensar: analiza, inspírate y haz el tuyo. Así es como realmente aprendes."

/**************************************************************************
 *   Copyright (C) 2025 by Jesús D. Garza Camarena                        *
 *   jesus.garzacmn@uanl.edu.mx                                           *
 *   Attribution-NonCommercial-ShareAlike 3.0 (CC-BY-NC-SA 3.0)           *
 *   https://creativecommons.org/licenses/by-nc-sa/3.0/                   *
 *                                                                        *
 *   Example S03.1 - Lab Practice #03 HDL - Logic Gates                   *
 *   Device: GAL22V10 / ATF22V10                                          *
 *   Language: Verilog                                                    *
 *   Revision: 1.0                                                        *
 *   Date: 20/04/25                                                       *
 **************************************************************************/

// Nombre de la actividad:
// Brigada : Día y hora
// Nombres:
// N.L. : Número de lista
// Fecha:

// Módulo de compuertas lógicas

module gates 
(
//Inputs
    input  wire a        /* synthesis loc = "P1"  */, // Entrada a conectada al pin P1
    input  wire b        /* synthesis loc = "P2"  */, // Entrada b conectada al pin P2
    input  wire c        /* synthesis loc = "P3"  */, // Entrada c conectada al pin P3

//Outputs
    output wire and_out  /* synthesis loc = "P23" */, // Salida AND conectada al pin P23
    output wire or_out   /* synthesis loc = "P22" */, // Salida OR conectada al pin P22
    output wire nand_out /* synthesis loc = "P21" */, // Salida NAND conectada al pin P21
    output wire nor_out  /* synthesis loc = "P20" */, // Salida NOR conectada al pin P20
    output wire exor_out /* synthesis loc = "P19" */  // Salida XOR conectada al pin P19
);


// Lógica combinacional
assign and_out  = a & b & c;             // Salida 1 solo si todas las entradas son 1
assign or_out   = a | b | c;             // Salida 1 si al menos una entrada es 1
assign nand_out = ~(a & b & c);          // Inverso de AND
assign nor_out  = ~(a | b | c);          // Inverso de OR
assign exor_out = a ^ b ^ c;             // XOR entre a, b y c (paridad impar)

endmodule

