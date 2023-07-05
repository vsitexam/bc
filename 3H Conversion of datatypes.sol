// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract conversion{

    uint   a = 5;
    uint8  b = 10;
    uint16 c = 15;

    function convert()public view returns (uint){
        uint result = a + uint(b) + uint(c);
        return result;

    }

}