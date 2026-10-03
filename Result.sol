// License
//SPDX-License-Identifier: LGPL-3.0-only

// Solidity version 
pragma solidity 0.8.24;

// Contract
contract Result {
    // Variables
    uint256 public result;

    // Functions
    function setResultado(uint256 num_) external {
        //asignar resultado a la variable global result
        result = num_;
    }
}
