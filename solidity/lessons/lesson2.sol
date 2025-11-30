// SPDX-License-Identifier: MIT

// functions in solidity

pragma solidity ^0.8.20;

contract MyFavouriteNumber {
    uint public myNumber = 10;

    // function
    function setMyNumber(uint newNumber) public {
        myNumber = newNumber;
    }
}
