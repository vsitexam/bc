// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract addition{

    int public input1;
    int public input2;
    
    function setInputs(int _input1, int _input2) public {
        input1 = _input1;
        input2 = _input2;
    }

    function additions() public returns(int){
        return input1+input2;
        
    }

    function subtract() public returns(int){
        int sum = input1-input2;
        return sum;
    }

}