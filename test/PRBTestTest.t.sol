// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import { PRBTest } from "../src/PRBTest.sol";
import { PRBTestMock } from "./PRBTestMock.t.sol";

contract PRBTestTest is PRBTest {
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
}
