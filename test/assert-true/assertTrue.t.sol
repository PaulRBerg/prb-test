// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import { PRBTestTest } from "../PRBTestTest.t.sol";

contract PRBTestTest__AssertTrue is PRBTestTest {
    function testAssertTrue__Pass() external {
        bool condition = true;
        prbTest._assertTrue(condition, EXPECT_PASS);
    }

    function testAssertTrue__Fail() external {
        vm.expectEmit(false, false, false, true);
        emit Log("Error: Assertion Failed");
        bool condition = false;
        prbTest._assertTrue(condition, EXPECT_FAIL);
    }

    function testAssertTrue__Err__Pass() external {
        bool condition = true;
        prbTest._assertTrue(condition, ERR, EXPECT_PASS);
    }

    function testAssertTrue__Err__Fail() external {
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        bool condition = false;
        prbTest._assertTrue(condition, ERR, EXPECT_FAIL);
    }
}
