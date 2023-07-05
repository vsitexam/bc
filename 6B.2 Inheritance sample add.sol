// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MathOperations {

    uint public a = 25;
    uint public b = 30;

    function add(uint x, uint y) public returns (uint) {
        return x + y;
    }
}

contract AdderContract is MathOperations {
    function performAddition() public returns (uint) {
        return add(a,b);
    }
}