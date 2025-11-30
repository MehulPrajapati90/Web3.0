// SPDX-License-Identifier: MIT

// Requie Keyword

pragma solidity ^0.8.20;

contract MyFavoriteNumber {
    uint public myNumber = 10;

    function setMyNumber(uint _newNumber) public {
        // Work's as same as else if...
        require(_newNumber > myNumber, "New number must be greater than the current one.");

        myNumber = _newNumber;
    }
}