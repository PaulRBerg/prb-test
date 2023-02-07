// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import { PRBTest_Test } from "../PRBTest.t.sol";

contract PRBTestTest_AssertFalse is PRBTest_Test {
    function test_AssertFalse_Pass() external {
        bool condition = false;
        prbTest._assertFalse(condition, EXPECT_PASS);
    }

    function test_AssertFalse_Fail() external {
        vm.expectEmit({ checkTopic1: false, checkTopic2: false, checkTopic3: false, checkData: true });
        emit Log("Error: Assertion Failed");
        bool condition = true;
        prbTest._assertFalse(condition, EXPECT_FAIL);
    }

    function test_AssertFalse_Err_Pass() external {
        bool condition = false;
        prbTest._assertFalse(condition, ERR, EXPECT_PASS);
    }

    function test_AssertFalse_Err_Fail() external {
        vm.expectEmit({ checkTopic1: false, checkTopic2: false, checkTopic3: false, checkData: true });
        emit LogNamedString("Error", ERR);
        bool condition = true;
        prbTest._assertFalse(condition, ERR, EXPECT_FAIL);
    }
}
