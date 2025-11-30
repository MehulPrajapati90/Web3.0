// SPDX-License-Identifier: MIT

// view and pure keyword - in solidity

pragma solidity ^0.8.20;

// view -> can read, do change
// pure -> cannot read or change value untill and unless it's an input
contract ViewValue {
    uint public amount = 10;

    function getBalance() public view returns (uint) {
        return amount;
    }

    function viewBalance() public pure returns (uint) {
        uint initial_balance = 100;
        return initial_balance;
    }
}