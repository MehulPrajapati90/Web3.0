// SPDX-License-Identifier: MIT

// Array's & Array Operations in Solidity

pragma solidity ^0.8.20;

contract UintArray {
    // A Dynamic Array
    uint[] public myNumbers;

    // A Static Array having 5 space
    uint[5] public myFiveScores;

    // A Static Array having 3 space - initialized element while declaration of Array
    uint[3] public topThreeWinners = [101, 205, 117];

    function addNumber(uint _newNumber) public {
        myNumbers.push(_newNumber);
    }

    function getCount() public view returns (uint) {
        return myNumbers.length;
    }

    function getNumberAtIndex(uint _index) public view returns (uint) {
        return myNumbers[_index];
    }

    function setScore(uint _index, uint _value) public {
        // We must make sure the index is within our bounds (0 to 2).
        require(_index < 3, "Index out of bounds.");

        topThreeWinners[_index] = _value;
    }

    function getAllNumbersOfDynamicArray() public view returns (uint[] memory) {
        return myNumbers;
    }

    function getAllNumbersOfStaticArray() public view returns (uint[3] memory) {
        return topThreeWinners;
    }
}