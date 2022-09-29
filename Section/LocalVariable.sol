// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract LocalVariables {
    uint256 public i; //State variable
    bool public b; //State variable
    address public myAddress; //State variable

    function doSomething() external {
        uint256 x = 456; //Local variable
        bool f = false; //Local variable
        x += 456;
        f = true;

        i = 123;
        b = true;
        myAddress = address(1);
    }
}