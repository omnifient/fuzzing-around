// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {HandlerWithFailingFunction} from "./HandlerWithFailingFunction.sol";

contract InvariantTestHandlerWithFailingFunction is Test {
    HandlerWithFailingFunction internal _handler;

    function setUp() public {
        _handler = new HandlerWithFailingFunction();
    }

    function invariantTestHandlerWithFailingFunction1() public {
        console2.log("+++ t1");
        assertGe(_handler.counter().number(), 0);
    }

    function invariantTestHandlerWithFailingFunction2() public {
        console2.log("+++ t2");
        assertGe(_handler.counter().number(), 0);
    }
}
