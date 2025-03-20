// SPDX-License-Identifier: MIT

//@dev Build by Domum Digital. Est. 2021.

pragma solidity ^0.8.18;

import {Test, console} from "../lib/forge-std/src/Test.sol";
import {FundMe} from "../src/FundMe.sol";

// Foundry automatically runs the "setUp" function before each test function.
contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
        fundMe = new FundMe();
    }

    // Be very specific when naming your test functions to easily identify what went wrong.
    function testMinimumDollarIsFive() public view {
        assertEq(fundMe.MINIMUM_USD(), 5 * 10 ** 18);
    }

    function testOwnerIsMsgSender() public view {
        console.log(fundMe.i_owner());
        console.log(address(this));
        assertEq(fundMe.i_owner(), address(this));
    }
}
