// SPDX-License-Identifier: MIT

//@dev Build by Domum Digital. Est. 2021.

pragma solidity ^0.8.18;

import {Test, console} from "../lib/forge-std/src/Test.sol";
import {FundMe} from "../src/FundMe.sol";
import {DeployFundMe} from "../script/DeployFundMe.s.sol";

// Foundry automatically runs the "setUp" function before each test function.
contract FundMeTest is Test {
    FundMe fundMe;
    DeployFundMe deployFundMe;

    function setUp() external {
        //fundMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        deployFundMe = new DeployFundMe();
        fundMe = deployFundMe.run(); // DeployFundMe contract is a script that deploys FundMe contract.
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

    function testPriceFeedVersionIsAccurate() public view {
        uint256 version = fundMe.getVersion();
        console.log(fundMe.getVersion());
        assertEq(version, 4);
    }
}
