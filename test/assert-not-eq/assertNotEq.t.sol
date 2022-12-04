// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import "../../src/Helpers.sol";
import { PRBTestTest } from "../PRBTestTest.t.sol";

contract PRBTestTest__AssertNotEq is PRBTestTest {
    /*//////////////////////////////////////////////////////////////////////////
                                    BASIC TYPES
    //////////////////////////////////////////////////////////////////////////*/

    function testAssertNotEq__Address__Fail(address a) external {
        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [address]");
        prbTest._assertNotEq(a, a, EXPECT_FAIL);
    }

    function testAssertNotEq__Address__Err__Fail(address a) external {
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, a, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Address__Err__Pass(address a, address b) external {
        vm.assume(a != b);
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertNotEq__Address__Pass(address a, address b) external {
        vm.assume(a != b);
        prbTest._assertNotEq(a, b, EXPECT_PASS);
    }

    function testAssertNotEq__Bool__Fail() external {
        bool a;
        bool b;

        a = false;
        b = false;
        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [bool]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);

        a = true;
        b = true;
        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [bool]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);
    }

    function testAssertNotEq__Bool__Err__Pass() external {
        bool a;
        bool b;

        a = false;
        b = true;
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);

        a = true;
        b = false;
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertNotEq__Bool__Err__Fail() external {
        bool a;
        bool b;

        a = false;
        b = false;
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);

        a = true;
        b = true;
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Bool__Pass() external {
        bool a;
        bool b;

        a = false;
        b = true;
        prbTest._assertNotEq(a, b, EXPECT_PASS);

        a = true;
        b = false;
        prbTest._assertNotEq(a, b, EXPECT_PASS);
    }

    function testAssertNotEq__BoolArray__Pass() external {
        bool[] memory a = new bool[](1);
        bool[] memory b = new bool[](1);

        a[0] = false;
        b[0] = true;
        prbTest._assertNotEq(a, b, EXPECT_PASS);

        a[0] = true;
        b[0] = false;
        prbTest._assertNotEq(a, b, EXPECT_PASS);
    }

    function testAssertNotEq__BoolArray__Err__Pass() external {
        bool[] memory a = new bool[](1);
        bool[] memory b = new bool[](1);

        a[0] = false;
        b[0] = true;
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);

        a[0] = true;
        b[0] = false;
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertNotEq__BoolArray__Fail() external {
        bool[] memory a = new bool[](1);
        bool[] memory b = new bool[](1);

        a[0] = false;
        b[0] = false;
        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [bool[]]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);

        a[0] = true;
        b[0] = true;
        prbTest._assertNotEq(a, b, EXPECT_FAIL);
    }

    function testAssertNotEq__BoolArray__Err__Fail() external {
        bool[] memory a = new bool[](1);
        bool[] memory b = new bool[](1);

        a[0] = false;
        b[0] = false;
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);

        a[0] = true;
        b[0] = true;
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Bytes__Fail(uint256 e0, uint256 e1) external {
        vm.assume(e0 == e1);
        bytes memory a = abi.encode(e0);
        bytes memory b = abi.encode(e1);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [bytes]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);
    }

    function testAssertNotEq__Bytes__Err__Fail(uint256 e0, uint256 e1) external {
        vm.assume(e0 == e1);
        bytes memory a = abi.encode(e0);
        bytes memory b = abi.encode(e1);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Bytes__Err__Pass(uint256 e1) external {
        vm.assume(e1 != 0);
        bytes memory a = new bytes(32);
        bytes memory b = abi.encode(e1);
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertNotEq__Bytes__Pass(uint256 e1) external {
        vm.assume(e1 != 0);
        bytes memory a = new bytes(32);
        bytes memory b = abi.encode(e1);
        prbTest._assertNotEq(a, b, EXPECT_PASS);
    }

    function testAssertNotEq__Bytes32__Fail(bytes32 a) external {
        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [bytes32]");
        prbTest._assertNotEq(a, a, EXPECT_FAIL);
    }

    function testAssertNotEq__Bytes32__Err__Fail(bytes32 a) external {
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, a, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Bytes32__Err__Pass(bytes32 a, bytes32 b) external {
        vm.assume(a != b);

        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertNotEq__Bytes32__Pass(bytes32 a, bytes32 b) external {
        vm.assume(a != b);

        prbTest._assertNotEq(a, b, EXPECT_PASS);
    }

    function testAssertNotEq__Int256__Fail(int256 a) external {
        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [int256]");
        prbTest._assertNotEq(a, a, EXPECT_FAIL);
    }

    function testAssertNotEq__Int256__Err__Fail(int256 a) external {
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, a, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Int256__Err__Pass(int256 a, int256 b) external {
        vm.assume(a != b);
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertNotEq__Int256__Pass(int256 a, int256 b) external {
        vm.assume(a != b);
        prbTest._assertNotEq(a, b, EXPECT_PASS);
    }

    function testAssertNotEq__Uint256__Fail(uint256 a) external {
        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [uint256]");
        prbTest._assertNotEq(a, a, EXPECT_FAIL);
    }

    function testAssertNotEq__Uint256__Err__Fail(uint256 a) external {
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, a, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Uint256__Err__Pass(uint256 a, uint256 b) external {
        vm.assume(a != b);
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertNotEq__Uint256__Pass(uint256 a, uint256 b) external {
        vm.assume(a != b);
        prbTest._assertNotEq(a, b, EXPECT_PASS);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                        ARRAYS
    //////////////////////////////////////////////////////////////////////////*/

    function testAssertNotEq__AddressArray__FailElements(address e0, address e1, address e2) external {
        address[] memory a = new address[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        address[] memory b = new address[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [address[]]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);
    }

    function testAssertNotEq__AddressArray__FailLengths(uint256 len) external {
        vm.assume(len <= 10_000);

        address[] memory a = new address[](len);
        address[] memory b = new address[](len);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [address[]]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);
    }

    function testAssertNotEq__AddressArray__Err__FailElements(address e0, address e1, address e2) external {
        address[] memory a = new address[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        address[] memory b = new address[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__AddressArray__Err__FailElements(uint256 len) external {
        vm.assume(len <= 10_000);

        address[] memory a = new address[](len);
        address[] memory b = new address[](len);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__AddressArray__Err__Pass(address e1) external {
        vm.assume(e1 != address(0));
        address[] memory a = new address[](3);
        address[] memory b = new address[](3);
        b[1] = e1;
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertNotEq__AddressArray__Pass(address e1) external {
        vm.assume(e1 != address(0));
        address[] memory a = new address[](3);
        address[] memory b = new address[](3);
        b[1] = e1;
        prbTest._assertNotEq(a, b, EXPECT_PASS);
    }

    function testAssertNotEq__Bytes32Array__FailElements(bytes32 e0, bytes32 e1, bytes32 e2) external {
        bytes32[] memory a = new bytes32[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        bytes32[] memory b = new bytes32[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [bytes32[]]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);
    }

    function testAssertNotEq__Bytes32Array__FailElements(uint256 len) external {
        vm.assume(len <= 10_000);

        bytes32[] memory a = new bytes32[](len);
        bytes32[] memory b = new bytes32[](len);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [bytes32[]]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);
    }

    function testAssertNotEq__Bytes32Array__Err__FailElements(bytes32 e0, bytes32 e1, bytes32 e2) external {
        bytes32[] memory a = new bytes32[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        bytes32[] memory b = new bytes32[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Bytes32Array__Err__FailLengths(uint256 len) external {
        vm.assume(len <= 10_000);

        bytes32[] memory a = new bytes32[](len);
        bytes32[] memory b = new bytes32[](len);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Bytes32Array__Err__Pass(bytes32 e1) external {
        vm.assume(e1 != bytes32(uint256(0x00)));

        bytes32[] memory a = new bytes32[](3);
        bytes32[] memory b = new bytes32[](3);
        b[1] = e1;
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertNotEq__Bytes32Array__Pass(bytes32 e1) external {
        vm.assume(e1 != 0);

        bytes32[] memory a = new bytes32[](3);
        bytes32[] memory b = new bytes32[](3);
        b[1] = e1;
        prbTest._assertNotEq(a, b, EXPECT_PASS);
    }

    function testAssertNotEq__Int256Array__FailElements(int256 e0, int256 e1, int256 e2) external {
        int256[] memory a = new int256[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        int256[] memory b = new int256[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [int256[]]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);
    }

    function testAssertNotEq__Int256Array__FailLengths(uint256 len) external {
        vm.assume(len <= 10_000);

        int256[] memory a = new int256[](len);
        int256[] memory b = new int256[](len);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [int256[]]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);
    }

    function testAssertNotEq__Int256Array__Err__FailElements(int256 e0, int256 e1, int256 e2) external {
        int256[] memory a = new int256[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        int256[] memory b = new int256[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Int256Array__Err__FailLengths(uint256 len) external {
        vm.assume(len <= 10_000);

        int256[] memory a = new int256[](len);
        int256[] memory b = new int256[](len);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Int256Array__Err__Pass(int256 e1) external {
        vm.assume(e1 != 0);
        int256[] memory a = new int256[](3);
        int256[] memory b = new int256[](3);
        b[1] = e1;
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertNotEq__Int256Array__Pass(int256 e1) external {
        vm.assume(e1 != 0);
        int256[] memory a = new int256[](3);
        int256[] memory b = new int256[](3);
        b[1] = e1;
        prbTest._assertNotEq(a, b, EXPECT_PASS);
    }

    function testAssertNotEq__Uint256Array__FailElements(uint256 e0, uint256 e1, uint256 e2) external {
        uint256[] memory a = new uint256[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        uint256[] memory b = new uint256[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [uint256[]]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);
    }

    function testAssertNotEq__Uint256Array__FailLengths(uint256 len) external {
        vm.assume(len <= 10_000);

        uint256[] memory a = new uint256[](len);
        uint256[] memory b = new uint256[](len);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a != b not satisfied [uint256[]]");
        prbTest._assertNotEq(a, b, EXPECT_FAIL);
    }

    function testAssertNotEq__Uint256Array__Err__FailElements(uint256 e0, uint256 e1, uint256 e2) external {
        uint256[] memory a = new uint256[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        uint256[] memory b = new uint256[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Uint256Array__Err__FailLengths(uint256 len) external {
        vm.assume(len <= 10_000);

        uint256[] memory a = new uint256[](len);
        uint256[] memory b = new uint256[](len);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertNotEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertNotEq__Uint256Array__Err__Pass(uint256 e1) external {
        vm.assume(e1 != 0);
        uint256[] memory a = new uint256[](3);
        uint256[] memory b = new uint256[](3);
        b[1] = e1;
        prbTest._assertNotEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertNotEq__Uint256Array__Pass(uint256 e1) external {
        vm.assume(e1 != 0);
        uint256[] memory a = new uint256[](3);
        uint256[] memory b = new uint256[](3);
        b[1] = e1;
        prbTest._assertNotEq(a, b, EXPECT_PASS);
    }
}
