// SPDX-License-Identifier: MIT

// Requie Keyword

pragma solidity ^0.8.20;

contract RequiedOps {
    string public myStatus = "Learning Solidity";

    function setMyStatus(string calldata _myStatus) public {
        // we can use this as well - keccak256(abi.encodePacked(myStatus)) != keccak256(abi.encodePacked(""))
        require(bytes(myStatus).length > 0, "The Status can't be empty");
        myStatus = _myStatus;
    }
}
