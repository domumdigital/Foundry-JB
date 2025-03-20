// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.9.0;

import {Script, console} from "../lib/forge-std/src/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script {
    FundMe fundMe;

    function run() external {
        vm.startBroadcast();
        fundMe = new FundMe();
        vm.stopBroadcast();
    }
}
