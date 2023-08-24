// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {DSTest} from "forge-std/Test.sol";
import "forge-std/console.sol";

import {Counter} from "../../src/Counter.sol";

contract HandlerWithFailingFunction is DSTest {
    Counter public counter;

    constructor() {
        counter = new Counter();
        counter.setNumber(0);
    }

    function handlerA(uint256 amount) external {
        console.log("--- handlerA (fails)", amount);
        counter.setNumber(amount);
        counter.increment();
        assert(false); // fail
    }

    function handlerB(uint256 amount) external {
        console.log("--- handlerB", amount);
        counter.setNumber(amount);
        counter.increment();
    }

    function handlerC(uint256 amount) external {
        console.log("--- handlerC", amount);
        counter.setNumber(amount);
        counter.increment();
    }

    function handlerD(uint256 amount) external {
        console.log("--- handlerD", amount);
        counter.setNumber(amount);
        counter.increment();
    }
}
