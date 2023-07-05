// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract maps{

    mapping (uint=>string) public roll_no;

    function set(uint keys, string memory value) public {
        roll_no[keys]=value;
    }
    
}