// SPDX-License-Identifier: MIT

// Payable & transferable contract

pragma solidity ^0.8.20;

contract SendEther {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner.");
        _;
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function withdraw() public onlyOwner {
        uint amount = address(this).balance;

        address ownerAddress = owner;
        
        payable(ownerAddress).transfer(amount);
    }

    function sendMoney(address _recipient, uint amount) public payable onlyOwner{ 
        
       uint currentbalance = getBalance();
    
       require(currentbalance >= amount, "Insufficient balance");
       require(_recipient != address(0), "Cannot send to the zero address.");

       payable(_recipient).transfer(amount);
        
    }
}