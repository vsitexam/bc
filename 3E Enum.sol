// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Enums{

    //Define enum
    enum week_days {Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday}
    week_days choice;

    function set_value() public {
      choice = week_days.Friday;
    }
 
    // Defining a function to
    // return value of choice
    function get_choice(
    ) public view returns (week_days) {
      return choice;
    }
}