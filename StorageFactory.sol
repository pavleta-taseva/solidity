// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    // type, visibility, name
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorage);
    }

    function sfStore(uint256 _storageIndex, uint256 _newStorageNumber) public {
        //Address
        //ABI - Application binary interface
        listOfSimpleStorageContracts[_storageIndex].store(_newStorageNumber);
    }

    function sfGet(uint256 _storageIndex) public view returns (uint256) {
        return listOfSimpleStorageContracts[_storageIndex].retrieve();
    }
}
