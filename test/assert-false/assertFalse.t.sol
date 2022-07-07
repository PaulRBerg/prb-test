// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import { PRBTestTest } from "../PRBTestTest.t.sol";

contract PRBTestTest__AssertFalse is PRBTestTest {
    function testAssertFalse__Pass() external {
        bool condition = false;
        prbTest._assertFalse(condition, EXPECT_PASS);
    }

    function testAssertFalse__Fail() external {
        vm.expectEmit(false, false, false, true);
        emit Log("Error: Assertion Failed");
        bool condition = true;
        prbTest._assertFalse(condition, EXPECT_FAIL);
    }

    function testAssertFalse__Err__Pass() external {
        bool condition = false;
        prbTest._assertFalse(condition, ERR, EXPECT_PASS);
    }

    function testAssertFalse__Err__Fail() external {
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        bool condition = true;
        prbTest._assertFalse(condition, ERR, EXPECT_FAIL);
    }
}
