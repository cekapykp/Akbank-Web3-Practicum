// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionIntro {
    // pure is view only.
    function add(uint256 x, uint256 y) external pure returns (uint256) {
        return x + y;
    }

    // pure is view only.
    function sub(uint256 x, uint256 y) external pure returns (uint256) {
        return x - y;
    }
}