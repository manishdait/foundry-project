// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter counter;

    function setUp() public {
        counter = new Counter(10);
    }

    function testGetCount() public {
        uint256 value = counter.number();
        assertEq(value, 10);
        emit log_named_uint("Value is", value);
    }

    function testIncrementCounter() public {
        counter.incrementCounter();
        uint256 value = counter.number();
        assertEq(value, 11);
        emit log_named_uint("Value is", value);
    }

    function testDecrementCounter() public {
        counter.decrementCounter();
        uint256 value = counter.number();
        assertEq(value, 9);
        emit log_named_uint("Value is", value);
    }

    function testResetCounter() public {
        counter.resetCounter();
        uint256 value = counter.number();
        assertEq(value, 0);
        emit log_named_uint("Value is", value);
    }
}
