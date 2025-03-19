// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// Naming the specific {contracts} from the folders to be accurate during our import.
import {Script} from "../lib/forge-std/src/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract deploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
