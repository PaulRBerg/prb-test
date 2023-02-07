// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import { PRBTest_Test } from "../PRBTest.t.sol";

contract PRBTestTest_AssertTrue is PRBTest_Test {
    function test_AssertTrue_Pass() external {
        bool condition = true;
        prbTest._assertTrue(condition, EXPECT_PASS);
    }

    function test_AssertTrue_Fail() external {
        vm.expectEmit({ checkTopic1: false, checkTopic2: false, checkTopic3: false, checkData: true });
        emit Log("Error: Assertion Failed");
        bool condition = false;
        prbTest._assertTrue(condition, EXPECT_FAIL);
    }

    function test_AssertTrue_Err_Pass() external {
        bool condition = true;
        prbTest._assertTrue(condition, ERR, EXPECT_PASS);
    }

    function test_AssertTrue_Err_Fail() external {
        vm.expectEmit({ checkTopic1: false, checkTopic2: false, checkTopic3: false, checkData: true });
        emit LogNamedString("Error", ERR);
        bool condition = false;
        prbTest._assertTrue(condition, ERR, EXPECT_FAIL);
    }
}
