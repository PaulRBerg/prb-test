// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import { PRBTestTest } from "../PRBTestTest.t.sol";

/// @dev We need to use the function "Function" prefix before "Fail" because Forge expects functions that
/// start with "testFail" to revert.
contract PRBTestTest__Fail is PRBTestTest {
    function testFunctionFail__Pass() external {
        prbTest._fail();
    }

    function testFunctionFail__Err__Pass() external {
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._fail(ERR);
    }
}
