// SPDX-License-Identifier: MIT

// Payable contract

pragma solidity ^0.8.20;

contract OwnerOps {
    address public owner;
    uint public myNumber;

    constructor() {
        owner = msg.sender;
        myNumber = 100;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner!");
        _;
    }

    function setNumber(uint value) public payable onlyOwner {
        require(msg.value == 0.1 ether, "The amount should be 0.1 ether only");
        myNumber = value;
    }
}