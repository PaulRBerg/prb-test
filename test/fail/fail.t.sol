// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import { PRBTest_Test } from "../PRBTest.t.sol";

contract Fail_Test is PRBTest_Test {
    function test_Fail_Pass() external {
        prbTest._fail();
    }

    function test_Fail_Err_Pass() external {
        vm.expectEmit({ checkTopic1: false, checkTopic2: false, checkTopic3: false, checkData: true });
        emit LogNamedString("Error", ERR);
        prbTest._fail(ERR);
    }
}
