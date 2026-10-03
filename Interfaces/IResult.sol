// Licencia
//SPDX-License-Identifier: LGPL-3.0-only

// Version solidity
pragma solidity 0.8.24;

// Interface
// sintaxis nombre fichero: I + nombre interfaz (ej: IResultado.sol)
// sintaxis interfaz: solo añadir la definicion de la funcion(1 linea) no añadir la implementacion (cuerpo de la funcion) 
interface IResult {
    function setResultado(uint256 num_) external; // solo la definicion de la funcion sin el cuerpo
}