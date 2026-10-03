// License
//SPDX-License-Identifier: LGPL-3.0-only

//  Solidity version
pragma solidity 0.8.24;

// Imports
import "./Interfaces/IResult.sol";

// Contract
contract Sumador {
    // Variables
    address public result;
    uint256 public fee = 5;
    address public admin;
    
    constructor(address result_, address admin_) {
        result = result_;
        admin = admin_;
    }

    // Functions
    function addition(uint256 num1_, uint256 num2_) external {
        uint256 resultado = num1_ + num2_;
        IResult(result).setResultado(resultado);
    }

    function setFee(uint256 newFee) external {
        if(msg.sender != admin) revert();
        fee = newFee;
    }
}
