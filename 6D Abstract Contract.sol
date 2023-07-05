// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

abstract contract main{
    //virtual indicates that it can be overridden
    function add(uint a,uint b) public virtual returns (uint){
    }
}

contract adder is main{
    //add function name is same from the parent contract hence we must tag is as override
    function add(uint a,uint b)public override returns(uint){
        return a+b;
    }
}