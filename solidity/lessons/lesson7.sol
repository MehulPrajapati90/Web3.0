// SPDX-License-Identifier: MIT

// Owner modifiers

pragma solidity ^0.8.20;

contract Owner {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Things only owner can do
    modifier  onlyOwner() {
        require(msg.sender == owner, "You are not the owner!");
        _;
    }
}
