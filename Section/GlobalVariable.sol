// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables {
    function globalVars()
        external
        view
        returns (
            address,
            uint256,
            uint256
        )
    {


        address sender = msg.sender; // address of the caller
        uint256 timestamp = block.timestamp; // Current block timestamp
        uint256 blockNum = block.number; // Current block number
        return (sender, timestamp, blockNum); // 0x55636F5FdF47ee780bF46474D570D496D6F6d405, 1627380000, 123456
    }
}