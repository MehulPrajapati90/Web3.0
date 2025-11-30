// SPDX-License-Identifier: MIT

// Use-case of onlyOwner modifier

pragma solidity ^0.8.20;

contract Owner {
    address public owner;
    uint public myNumber;
    string public currentStatus;

    constructor() {
        owner = msg.sender;
        myNumber = 100;
        currentStatus = "Learning Solidity";
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner!");
        _;
    }

    function setNumber(uint value) public onlyOwner {
        myNumber = value;
    }

    function setStatus(string calldata newStatus) public onlyOwner {
        currentStatus = newStatus;
    }
}