// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Immutable {

    address public immutable owner = msg.sender;

    // constructor() {
    //     owner = msg.sender;
    // }

    uint256 public x;

    function fiuuu() external {
        require(msg.sender == owner); // Only the owner can call this function
        x += 1;
    }
}