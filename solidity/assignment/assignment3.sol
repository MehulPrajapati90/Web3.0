// SPDX-License-Identifier: MIT

// view and pure keyword - in solidity

pragma solidity ^0.8.20;

contract CalNumber {
    function doubleMyNumber (uint currentNum) public pure returns (uint) {
        uint doubleNumber = currentNum;
        return doubleNumber * 2;
    }
}