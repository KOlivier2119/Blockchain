// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract MyContract {
   mapping(address => uint) public balances;

   function add(address addr, uint balance) external {
    balances[addr] = balance;
   }

   function read(address addr) external view returns(uint) {
    return balances[addr];
   }

   function deleteEL(address addr) external {
    delete balances[addr];
   }
}
