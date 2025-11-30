// SPDX-License-Identifier: MIT

// functions in solidity

pragma solidity ^0.8.20;

contract MyStringFunction {
    string public myStatus = "Learning Solidity";

    // function
    function setMyStatus(string calldata newStatus) public {
        myStatus = newStatus;
    }
}
