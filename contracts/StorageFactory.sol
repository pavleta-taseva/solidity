// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

import "./SimpleStorage.sol";

contract StorageFactory {
    // type, visibility, name
    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}