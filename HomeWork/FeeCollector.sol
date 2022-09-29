pragma solidity ^0.8.7;

contract FeeCollector {
    address public owner;   // this variable will store the address of the owner

    uint256 public balance; // this variable will store the balance of the contract

    constructor() {
        owner = msg.sender; // 0xfeC4A115911A120FdEd09a025b32D51e965E1214
    }

    // this function increases balance by value of 'msg.value'
    receive() external payable {
        balance += msg.value;
    }

    // this function will be called when someone wants to withdraw eth
    function withdraw(uint256 amount, address payable destAddr) public {
        // throws error if msg.sender is not owner
        require(msg.sender == owner, "Only owner can withdraw");
        // throws error if amount > balance of the account
        require(amount <= balance, "Insufficient funds");
        // after being sure about the function,
        // we are sending eth to the given address
        destAddr.transfer(amount);
        // decreasing balance by value of the sent amount
        balance -= amount;
    }
}