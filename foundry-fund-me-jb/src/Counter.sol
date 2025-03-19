// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

//@dev Build by Domum Digital. Est. 2021.

contract Counter {
    uint256 public count;

    function increment() public {
        count += 1;
    }

    function decrement() public {
        count -= 1;
    }
}
