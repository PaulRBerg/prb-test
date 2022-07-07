// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import { PRBTestTest } from "../PRBTestTest.t.sol";

contract PRBTestTest__AssertGte is PRBTestTest {
    function testAssertGte__Fail(int256 a, int256 b) external {
        vm.assume(a < b);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a >= b not satisfied [int256]");
        prbTest._assertGte(a, b, EXPECT_FAIL);
    }

    function testAssertGte__Err__Fail(int256 a, int256 b) external {
        vm.assume(a < b);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertGte(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertGte__Err__Pass(int256 a, int256 b) external {
        vm.assume(a >= b);

        prbTest._assertGte(a, b, ERR, EXPECT_PASS);
    }

    function testAssertGte__Pass(int256 a, int256 b) external {
        vm.assume(a >= b);

        prbTest._assertGte(a, b, EXPECT_PASS);
    }

    function testAssertGte__Fail(uint256 a, uint256 b) external {
        vm.assume(a < b);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a >= b not satisfied [uint256]");
        prbTest._assertGte(a, b, EXPECT_FAIL);
    }

    function testAssertGte__Err__Fail(uint256 a, uint256 b) external {
        vm.assume(a < b);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertGte(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertGte__Err__Pass(uint256 a, uint256 b) external {
        vm.assume(a >= b);

        prbTest._assertGte(a, b, ERR, EXPECT_PASS);
    }

    function testAssertGte__Pass(uint256 a, uint256 b) external {
        vm.assume(a >= b);

        prbTest._assertGte(a, b, EXPECT_PASS);
    }
}
