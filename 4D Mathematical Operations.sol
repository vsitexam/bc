// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract mathOperations{
    //addMod computes (x+y)%k
    //mulMod computes (x*y)%k

    function aMod()public pure returns(uint aMod, uint mMod){
        uint x = 3;
        uint y = 2;
        uint k = 6;
        aMod = addmod(x, y, k);
        mMod = mulmod(x, y, k);
    }
}