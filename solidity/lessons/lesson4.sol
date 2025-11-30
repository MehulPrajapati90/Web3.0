// SPDX-License-Identifier: MIT

// String and bytes operations

pragma solidity ^0.8.20;

contract StrAndBytsOps {
    string public myStatus = "Learning Solidity";
    string public name = "MehulHQ";
    string public status = "is learning";

    // Length of string
    uint public length = bytes(myStatus).length;

    // Give's the element present in the specified index ( note: it gives ASCII/UTF-8 - formate of that element )
    bytes1 public firstCharAsByte = bytes(myStatus)[0];

    // This is how you join them:
    string public sentence = string(abi.encodePacked(name, " ", status, "."));
    // The value of 'sentence' will be "MehulHQ is learning."
}