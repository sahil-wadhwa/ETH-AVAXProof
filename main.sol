// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExceptionExample {
    address public owner;
    uint public minValue = 100;

    constructor() {
        owner = msg.sender;
    }

    // Function to demonstrate require()
    function withdraw(uint amount) public {
        require(amount > 0, "Amount must be greater than zero");
        require(amount <= address(this).balance, "Insufficient balance");
        
        payable(msg.sender).transfer(amount);
    }

    // Function to demonstrate assert()
    function assertExample(uint x) public pure returns (uint) {
        uint y = x * 2;
        assert(y != 0);
        return y;
    }

    // Function to demonstrate revert()
    function updateMinValue(uint newValue) public {
        require(newValue > 5, "New value must be greater than 5");
        minValue = newValue;
    }
}
