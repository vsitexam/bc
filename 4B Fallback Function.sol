// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract fallbackfn
{
    event Log(string func,address sender, uint value, bytes data);

    fallback() external payable{
        emit Log("fallback",msg.sender,msg.value,msg.data);
    }

    receive() external payable{
        emit Log("receive",msg.sender,msg.value,"");
        //msg.data is empty hence no need to specify it and mark it as empty string
    }
}

