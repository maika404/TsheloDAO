//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract TshelaTimelock is TimelockController {

    constructor(uint256 minDelay,
    address[] memory proposers,
    address[] memory executors
    ) 
    TimelockController(minDelay, proposers, executors) 
    {
        
    }
}