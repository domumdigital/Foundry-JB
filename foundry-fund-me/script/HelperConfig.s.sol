// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// 1. Deploy Mocks on our local Anvil chain
// 2. Keep track of contract addresses across chains

import {Script, console} from "../lib/forge-std/src/Script.sol";
import {FundMe} from "../src/FundMe.sol";

// If we are on our local Anvil chain, deploy Mock Price Feed addresses
// If we are on a live network chain, deploy the real Price Feed addresses
contract HelperConfig is Script {
    struct NetworkConfig {
        address priceFeed;
    }

    function getSepoliaEthConfig() public pure returns (NetworkConfig memory) {
        NetworkConfig memory sepoliaConfig = NetworkConfig({
            priceFeed: 0x694AA1769357215DE4FAC081bf1f309aDC325306
        });
        return sepoliaConfig;
        // Sepolia ETH Price Feed Address
    }

    function getAnvilEthConfig() public pure returns (NetworkConfig memory) {
        return NetworkConfig(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        // Anvil ETH Price Feed Address
    }
}
