// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract DataType {

    uint8 numberOne = 0;
    uint256 numberTwo = 0;
    uint256 public lastGasUsedRegular;
    uint256 public lastGasUsedOptimized;

    function goodDataType() external returns (uint) {
        uint256 startingGas = gasleft();
        
        uint8 numberOneOptimized = 0;
        uint8 numberTwoOptimized = 0;

        numberOneOptimized = 10;
        numberTwoOptimized = 20;

        lastGasUsedOptimized = startingGas - gasleft();
        return lastGasUsedOptimized;
    }

    function badDataType() external returns (uint256){
        uint8 rangeNum = 50;
        uint256 startingGas = gasleft();
        for (uint8 i; i < rangeNum; i++) {
            numberOne += 1;
        }

        
        lastGasUsedRegular = startingGas - gasleft();
        return lastGasUsedRegular;
    }
}