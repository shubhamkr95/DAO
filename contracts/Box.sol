// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Proposal is Ownable {
    uint private value;

    // Emitted when the stored value changes
    event ValueChanged(uint256 newValue);

    function store(uint new_value) public onlyOwner {
        value = new_value;
        emit ValueChanged(new_value);
    }

    function retrieve() public view returns(uint) {
        return value;
    }

}
