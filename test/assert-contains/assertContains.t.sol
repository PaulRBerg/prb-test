// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import { PRBTestTest } from "../PRBTestTest.t.sol";

contract PRBTestTest__AssertContains is PRBTestTest {
    function testAssertContains__Address__Fail(address e0, address e1) external {
        vm.assume(e0 != e1);

        address[] memory a = new address[](1);
        a[0] = e0;
        address b = e1;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a does not contain b [address[]]");
        prbTest._assertContains(a, b, EXPECT_FAIL);
    }

    function testAssertContains__Address__Err__Fail(address e0, address e1) external {
        vm.assume(e0 != e1);

        address[] memory a = new address[](1);
        a[0] = e0;
        address b = e1;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertContains(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertContains__Address__Err__Pass(address e0, address e1) external {
        vm.assume(e0 != address(0));

        address[] memory a = new address[](2);
        a[0] = e0;
        a[1] = e1;
        address b = e1;
        prbTest._assertContains(a, b, ERR, EXPECT_PASS);
    }

    function testAssertContains__Address__Pass(address e0, address e1) external {
        vm.assume(e0 != address(0));

        address[] memory a = new address[](2);
        a[0] = e0;
        a[1] = e1;
        address b = e1;
        prbTest._assertContains(a, b, EXPECT_PASS);
    }

    function testAssertContains__Bytes32__Fail(bytes32 e0, bytes32 e1) external {
        vm.assume(e0 != e1);

        bytes32[] memory a = new bytes32[](1);
        a[0] = e0;
        bytes32 b = e1;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a does not contain b [bytes32[]]");
        prbTest._assertContains(a, b, EXPECT_FAIL);
    }

    function testAssertContains__Bytes32__Err__Fail(bytes32 e0, bytes32 e1) external {
        vm.assume(e0 != e1);

        bytes32[] memory a = new bytes32[](1);
        a[0] = e0;
        bytes32 b = e1;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertContains(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertContains__Bytes32__Err__Pass(bytes32 e0, bytes32 e1) external {
        vm.assume(e0 != bytes32(uint256(0x00)));

        bytes32[] memory a = new bytes32[](2);
        a[0] = e0;
        a[1] = e1;
        bytes32 b = e1;
        prbTest._assertContains(a, b, ERR, EXPECT_PASS);
    }

    function testAssertContains__Bytes32__Pass(bytes32 e0, bytes32 e1) external {
        vm.assume(e0 != bytes32(uint256(0x00)));

        bytes32[] memory a = new bytes32[](2);
        a[0] = e0;
        a[1] = e1;
        bytes32 b = e1;
        prbTest._assertContains(a, b, EXPECT_PASS);
    }

    function testAssertContains__Int256__Fail(int256 e0, int256 e1) external {
        vm.assume(e0 != e1);

        int256[] memory a = new int256[](1);
        a[0] = e0;
        int256 b = e1;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a does not contain b [int256[]]");
        prbTest._assertContains(a, b, EXPECT_FAIL);
    }

    function testAssertContains__Int256__Err__Fail(int256 e0, int256 e1) external {
        vm.assume(e0 != e1);

        int256[] memory a = new int256[](1);
        a[0] = e0;
        int256 b = e1;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertContains(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertContains__Int256__Err__Pass(int256 e0, int256 e1) external {
        vm.assume(e0 != 0);

        int256[] memory a = new int256[](2);
        a[0] = e0;
        a[1] = e1;
        int256 b = e1;
        prbTest._assertContains(a, b, ERR, EXPECT_PASS);
    }

    function testAssertContains__Int256__Pass(int256 e0, int256 e1) external {
        vm.assume(e0 != 0);

        int256[] memory a = new int256[](2);
        a[0] = e0;
        a[1] = e1;
        int256 b = e1;
        prbTest._assertContains(a, b, EXPECT_PASS);
    }

    function testAssertContains__Uint256__Fail(uint256 e0, uint256 e1) external {
        vm.assume(e0 != e1);

        uint256[] memory a = new uint256[](1);
        a[0] = e0;
        uint256 b = e1;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a does not contain b [uint256[]]");
        prbTest._assertContains(a, b, EXPECT_FAIL);
    }

    function testAssertContains__Uint256__Err__Fail(uint256 e0, uint256 e1) external {
        vm.assume(e0 != e1);

        uint256[] memory a = new uint256[](1);
        a[0] = e0;
        uint256 b = e1;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertContains(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertContains__Uint256__Err__Pass(uint256 e0, uint256 e1) external {
        vm.assume(e0 != 0);

        uint256[] memory a = new uint256[](2);
        a[0] = e0;
        a[1] = e1;
        uint256 b = e1;
        prbTest._assertContains(a, b, ERR, EXPECT_PASS);
    }

    function testAssertContains__Uint256__Pass(uint256 e0, uint256 e1) external {
        vm.assume(e0 != 0);

        uint256[] memory a = new uint256[](2);
        a[0] = e0;
        a[1] = e1;
        uint256 b = e1;
        prbTest._assertContains(a, b, EXPECT_PASS);
    }
}
