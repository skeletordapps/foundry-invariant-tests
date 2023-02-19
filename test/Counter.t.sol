// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import {Test, StdInvariant} from "forge-std/Test.sol";

import {WETH9} from "../src/WETH9.sol";

contract WETH9Invariants is Test, StdInvariant {
    WETH9 public weth;

    function setUp() public {
        weth = new WETH9();
    }

    function invariant_badInvariantThisShouldFail() public {
        assertEq(1, weth.totalSupply());
    }
}
