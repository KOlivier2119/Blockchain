// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Coin {
    address public sender;
    mapping (address => uint) private balances;
    constructor() {
        sender = msg.sender;
    }
    function mint(address receiver, uint amount) public {
        require(sender == msg.sender, "Only the contract creator can mint coins.");
        balances[receiver] += amount;
    }

    function send(address receiver, uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[receiver] += amount;
        balances[msg.sender] -= amount;
    }
}