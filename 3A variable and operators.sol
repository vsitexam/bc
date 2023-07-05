// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract PrimitiveDataTypes {

    //state variables (global variable)
    uint8   a = 20; 
    uint256 b = 35;
    int     c = 10;
    int8    d = 3;

    bool    flag = true;
    address addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
    
    // Operations in solidity

    uint public addition    = a + b;
    int  public subtraction = c - d;
    int  public multiply    = d * c;
    int  public division    = c / d;
    int  public moduloDiv   = c % d;
    int  public increment   = ++c;
    int  public decrement   = --d;

}
