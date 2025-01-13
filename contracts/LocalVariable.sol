// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariableExample {
    function calculateSum() public pure returns (uint) {
        uint a = 5;//local variable
        uint b = 10;//Local variable
        return a + b;
    }
}