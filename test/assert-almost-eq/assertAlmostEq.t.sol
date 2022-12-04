// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import "../../src/Helpers.sol";
import { PRBTestTest } from "../PRBTestTest.t.sol";

contract PRBTestTest__AssertAlmostEq is PRBTestTest {
    function testAssertAlmostEq__Int256__Fail(int256 a, int256 b, uint256 maxDelta) external {
        vm.assume(delta(a, b) > maxDelta);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a ~= b not satisfied [int256]");
        prbTest._assertAlmostEq(a, b, maxDelta, EXPECT_FAIL);
    }

    function testAssertAlmostEq__Int256__Err__Fail(int256 a, int256 b, uint256 maxDelta) external {
        vm.assume(delta(a, b) > maxDelta);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertAlmostEq(a, b, maxDelta, ERR, EXPECT_FAIL);
    }

    function testAssertAlmostEq__Int256__Err__Pass(int256 a, int256 b, uint256 maxDelta) external {
        vm.assume(delta(a, b) <= maxDelta);
        prbTest._assertAlmostEq(a, b, maxDelta, ERR, EXPECT_PASS);
    }

    function testAssertAlmostEq__Int256__Pass(int256 a, int256 b, uint256 maxDelta) external {
        vm.assume(delta(a, b) <= maxDelta);
        prbTest._assertAlmostEq(a, b, maxDelta, EXPECT_PASS);
    }

    function testAssertAlmostEq__Uint256__Fail(uint256 a, uint256 b, uint256 maxDelta) external {
        vm.assume(delta(a, b) > maxDelta);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a ~= b not satisfied [uint256]");
        prbTest._assertAlmostEq(a, b, maxDelta, EXPECT_FAIL);
    }

    function testAssertAlmostEq__Uint256__Err__Fail(uint256 a, uint256 b, uint256 maxDelta) external {
        vm.assume(delta(a, b) > maxDelta);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertAlmostEq(a, b, maxDelta, ERR, EXPECT_FAIL);
    }

    function testAssertAlmostEq__Uint256__Err__Pass(uint256 a, uint256 b, uint256 maxDelta) external {
        vm.assume(delta(a, b) <= maxDelta);
        prbTest._assertAlmostEq(a, b, maxDelta, ERR, EXPECT_PASS);
    }

    function testAssertAlmostEq__Uint256__Pass(uint256 a, uint256 b, uint256 maxDelta) external {
        vm.assume(delta(a, b) <= maxDelta);
        prbTest._assertAlmostEq(a, b, maxDelta, EXPECT_PASS);
    }
}
