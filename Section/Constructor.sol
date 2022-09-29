// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor {
    address public owner; // State variable
    uint256 public x;   // State variable

    constructor(uint256 _x_1) {
        owner = msg.sender; // msg.sender is the address of the person who deployed the contract
        x = _x_1;
    }
}