//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract BallotBox is Ownable {
    uint private value;

    event Stored(uint256 newValue);

    function StoreValue(uint256 newValue) public onlyOwner {
        value = newValue;
        emit Stored(newValue);
    } 

    function retrieveValue() public view returns(uint256) {
        return value;
    }

}