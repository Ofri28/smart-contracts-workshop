// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract MyFirstContract {
    uint immutable deploymentTimeStamp;
    address public immutable owner;
    address public lastSetterAddress;
    string public message;

    constructor() {
        owner = msg.sender;
        deploymentTimeStamp = block.timestamp;
    }

    function getLastSetter() public view returns (address) {
        return lastSetterAddress;
    }

    function set(string memory newMessage) public {
        lastSetterAddress = msg.sender;
        message = newMessage;
    }
}