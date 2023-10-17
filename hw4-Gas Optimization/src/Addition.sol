// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract Addition {

    uint256 public number = 1;
    uint256 public number2 = 1;
    uint256 public lastGasUsedRegular;
    uint256 public lastGasUsedOptimized;

    function addition(uint256 value) public returns (uint256) {
        uint256 startingGas = gasleft();
        number += value;
        lastGasUsedRegular = startingGas - gasleft();
        return lastGasUsedRegular;
    }

    function additionOptimized(uint256 value) public returns (uint256) {
        uint256 startingGas = gasleft();
        uint256 result = number + value;
        number = result;
        lastGasUsedOptimized = startingGas - gasleft();
        return lastGasUsedOptimized;
    }
}