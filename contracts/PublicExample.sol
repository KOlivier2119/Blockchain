// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PublicExample {
    uint number = 100;

    function setNumber(uint _num) public {
        number = _num;
    }
}