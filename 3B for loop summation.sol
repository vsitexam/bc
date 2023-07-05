// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract loop{

    function summation(uint n) public returns (uint){
        uint sum = 0;
        for(uint i=1;i<=n;i++){
            sum = sum+i;
        }
        return sum;
    }

}
