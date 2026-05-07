// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    constructor(uint256 _number) {
        number = _number;
    }

    function incrementCounter() external {
        number++;
    }

    function decrementCounter() external {
        number--;
    }

    function resetCounter() external {
        number = 0;
    }
}
