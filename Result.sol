// Licencia
//SPDX-License-Identifier: LGPL-3.0-only

// Version solidity
pragma solidity 0.8.24;

// Contrato
contract Result {
    // Variables
    uint256 public result;

    // funciones
    // palabra reservada (function) + nombre funcion + argumentos + visibilidad + modificador + valor devuelto (returns)
    function setResultado(uint256 num_) external {
        //asignar resultado a la variable global result
        result = num_;
    }
}