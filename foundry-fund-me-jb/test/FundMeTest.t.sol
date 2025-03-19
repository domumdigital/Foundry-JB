// SPDX-License-Identifier: MIT

//@dev Build by Domum Digital. Est. 2021.

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

// Foundry automatically runs the "setUp" function before each test function.
contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
        fundMe = new FundMe();
    }

    function testMinimumDollarIsFive() public view {
        assertEq(fundMe.MINIMUM_USD(), 6 * 10 ** 18);
    }
}
