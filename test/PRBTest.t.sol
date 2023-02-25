// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.19 <0.9.0;

import { PRBTest } from "../src/PRBTest.sol";
import { PRBTestMock } from "./PRBTestMock.t.sol";

contract PRBTest_Test is PRBTest {
    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTANTS
    //////////////////////////////////////////////////////////////////////////*/

    string internal constant ERR = "bah!";
    bool internal constant EXPECT_FAIL = true;
    bool internal constant EXPECT_PASS = false;

    /*//////////////////////////////////////////////////////////////////////////
                                TESTING CONTRACTS
    //////////////////////////////////////////////////////////////////////////*/

    PRBTestMock internal prbTest = new PRBTestMock();

    /*//////////////////////////////////////////////////////////////////////////
                          INTERNAL NON-CONSTANT FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @dev Expects an event to be emitted by checking all three topics and the data. As mentioned in the Foundry
    /// Book, the extra `true` arguments don't hurt.
    function expectEmit() internal {
        vm.expectEmit({ checkTopic1: true, checkTopic2: true, checkTopic3: true, checkData: true });
    }
}
