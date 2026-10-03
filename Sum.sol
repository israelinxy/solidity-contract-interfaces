// Licencia
//SPDX-License-Identifier: LGPL-3.0-only

// Version solidity
pragma solidity 0.8.24;

//importaciones
import "./Interfaces/IResult.sol";

// Contrato
contract Sumador {
    // variables
    address public result;
    uint256 public fee = 5;
    address public admin;
    
    
    // para llamar funciones de otro contrato hay que hacerlo como si fueran un objeto. hay que inicializar el contrato al que queremos llamar (resultado) 
    // como si fuera un objeto dentro de este contrato (sumador) y asi podemos acceder a las funciones del contrato resultado
    // ¿como inicializar objeto en un sc?: 1 Interfaz | 2 address del sc que queremos inicializar como objeto (resultado)
    // para ello es obligatorio deployear primero el sc al que queremos llamar para poder convertirlo en objeto (deployear resultado) para tener esa address

    // interfaz: define las funciones de un sc para que otro sc pueda importarlo y hacer uso de ellas como si fueran un objeto.
    // buena practica es separar las interfaces de los sc creando un nuevo fichero
    // sintaxis nombre fichero: I + nombre interfaz (ej: IResultado.sol)
    // sintaxis interfaz: solo añadir la definicion de la funcion(1 linea) no añadir la implementacion (cuerpo de la funcion) 


    constructor(address result_, address admin_) {
        result = result_;
        admin = admin_;
    }

    // funciones
    // palabra clave function + nombre function + parametros + visibilidad + modificadores + valor devuelto
    function addition(uint256 num1_, uint256 num2_) external {
        uint256 resultado = num1_ + num2_;
        IResult(result).setResultado(resultado);
    }

    function setFee(uint256 newFee) external {
        if(msg.sender != admin) revert();
        fee = newFee;
    }

}