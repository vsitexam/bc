// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Arrays{

    //declaring an array
    uint[] public array1 = [1,2,3,4];
    
    function fetch() public returns(uint){
        uint len = array1.length;
        for(uint i=2;i<=len;i++){
            return array1[i];
        }
    }
}