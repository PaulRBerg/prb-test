// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0 <0.9.0;

import { PRBTest_Test } from "../PRBTest.t.sol";

contract AssertFalse_Test is PRBTest_Test {
    function test_AssertFalse_Pass() external {
        prbTest._assertFalse({ condition: false, expectFail: EXPECT_PASS });
    }

    function test_AssertFalse_Fail() external {
        vm.expectEmit({ checkTopic1: false, checkTopic2: false, checkTopic3: false, checkData: true });
        emit Log("Error: Assertion Failed");
        prbTest._assertFalse({ condition: true, expectFail: EXPECT_FAIL });
    }

    function test_AssertFalse_Err_Pass() external {
        prbTest._assertFalse({ condition: false, err: ERR, expectFail: EXPECT_PASS });
    }

    function test_AssertFalse_Err_Fail() external {
        vm.expectEmit({ checkTopic1: false, checkTopic2: false, checkTopic3: false, checkData: true });
        emit LogNamedString("Error", ERR);
        prbTest._assertFalse({ condition: true, err: ERR, expectFail: EXPECT_FAIL });
    }
}
