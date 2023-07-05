// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


library Sum {   
   function sumUsingInlineAssembly(uint[] memory _data) public pure returns (uint sum) {
      for (uint i = 0; i < _data.length; ++i) {

         assembly {
            sum := add(sum, mload(add(add(_data, 0x20), mul(i, 0x20))))
         }
      }
   }
}

contract Test {
   uint[] data;
   constructor() public {
      data.push(1);
      data.push(2);
      data.push(3);
      data.push(4);
      data.push(5);
   }
   function sum() external view returns(uint){
      return Sum.sumUsingInlineAssembly(data);
   }
}