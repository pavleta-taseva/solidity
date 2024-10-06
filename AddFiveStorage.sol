// SPDX-License-Identifier: MIT
// Inheritance in Solidity

pragma solidity ^0.8.24;

import { SimpleStorage } from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // overrides
    function store(uint256 _value) public override  {
        myFavoriteNumber = _value + 5;
    }
}