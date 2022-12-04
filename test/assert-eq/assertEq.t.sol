// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import "../../src/Helpers.sol";

import { PRBTestTest } from "../PRBTestTest.t.sol";

contract PRBTestTest__AssertEq is PRBTestTest {
    /*//////////////////////////////////////////////////////////////////////////
                                    BASIC TYPES
    //////////////////////////////////////////////////////////////////////////*/

    function testAssertEq__Address__Fail(address a, address b) external {
        vm.assume(a != b);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [address]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Address__Err__Fail(address a, address b) external {
        vm.assume(a != b);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Address__Err__Pass(address a) external {
        prbTest._assertEq(a, a, ERR, EXPECT_PASS);
    }

    function testAssertEq__Address__Pass(address a) external {
        prbTest._assertEq(a, a, EXPECT_PASS);
    }

    function testAssertEq__Bool__Fail() external {
        bool a;
        bool b;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [bool]");
        a = false;
        b = true;
        prbTest._assertEq(a, b, EXPECT_FAIL);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [bool]");
        a = true;
        b = false;
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Bool__Err__Fail() external {
        bool a;
        bool b;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        a = false;
        b = true;
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        a = true;
        b = false;
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Bool__Err__Pass() external {
        bool a;
        bool b;

        a = false;
        b = false;
        prbTest._assertEq(a, b, ERR, EXPECT_PASS);

        a = true;
        b = true;
        prbTest._assertEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertEq__Bool__Pass() external {
        bool a;
        bool b;

        a = false;
        b = false;
        prbTest._assertEq(a, b, EXPECT_PASS);

        a = true;
        b = true;
        prbTest._assertEq(a, b, EXPECT_PASS);
    }

    function testAssertEq__Bytes__Fail(bytes memory a, bytes memory b) external {
        vm.assume(!eq(a, b));

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [bytes]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Bytes__Err__Fail(bytes memory a, bytes memory b) external {
        vm.assume(!eq(a, b));

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Bytes__Err__Pass(bytes memory a) external {
        prbTest._assertEq(a, a, ERR, EXPECT_PASS);
    }

    function testAssertEq__Bytes__Pass(bytes memory a) external {
        prbTest._assertEq(a, a, EXPECT_PASS);
    }

    function testAssertEq__Bytes32__Fail(bytes32 a, bytes32 b) external {
        vm.assume(a != b);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [bytes32]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Bytes32__Err__Fail(bytes32 a, bytes32 b) external {
        vm.assume(a != b);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Bytes32__Err__Pass(bytes32 a) external {
        prbTest._assertEq(a, a, ERR, EXPECT_PASS);
    }

    function testAssertEq__Bytes32__Pass(bytes32 a) external {
        prbTest._assertEq(a, a, EXPECT_PASS);
    }

    function testAssertEq__Int256__Fail(int256 a, int256 b) external {
        vm.assume(a != b);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [int256]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Int256__Err__Fail(int256 a, int256 b) external {
        vm.assume(a != b);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Int256__Err__Pass(int256 a) external {
        prbTest._assertEq(a, a, ERR, EXPECT_PASS);
    }

    function testAssertEq__Int256__Pass(int256 a) external {
        prbTest._assertEq(a, a, EXPECT_PASS);
    }

    function testAssertEq__String__Fail(string memory a, string memory b) external {
        vm.assume(!eq(a, b));

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [string]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__String__Err__Fail(string memory a, string memory b) external {
        vm.assume(!eq(a, b));

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__String__Err__Pass(string memory a) external {
        prbTest._assertEq(a, a, ERR, EXPECT_PASS);
    }

    function testAssertEq__String__Pass(string memory a) external {
        prbTest._assertEq(a, a, EXPECT_PASS);
    }

    function testAssertEq__Uint256__Fail(uint256 a, uint256 b) external {
        vm.assume(a != b);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [uint256]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Uint256__Err__Fail(uint256 a, uint256 b) external {
        vm.assume(a != b);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Uint256__Err__Pass(uint256 a) external {
        prbTest._assertEq(a, a, ERR, EXPECT_PASS);
    }

    function testAssertEq__Uint256__Pass(uint256 a) external {
        prbTest._assertEq(a, a, EXPECT_PASS);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                        ARRAYS
    //////////////////////////////////////////////////////////////////////////*/

    function testAssertEq__AddressArray__FailElements(address e1) external {
        vm.assume(e1 != address(0));

        address[] memory a = new address[](3);
        address[] memory b = new address[](3);
        b[1] = e1;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [address[]]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__AddressArray__FailLengths(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        address[] memory a = new address[](lenA);
        address[] memory b = new address[](lenB);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [address[]]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__AddressArray__Err__FailElements(address e1) external {
        vm.assume(e1 != address(0));

        address[] memory a = new address[](3);
        address[] memory b = new address[](3);
        b[1] = e1;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__AddressArray__Err__FailLengths(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        address[] memory a = new address[](lenA);
        address[] memory b = new address[](lenB);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__AddressArray__Err__Pass(address e0, address e1, address e2) external {
        address[] memory a = new address[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        address[] memory b = new address[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        prbTest._assertEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertEq__AddressArray__Pass(address e0, address e1, address e2) external {
        address[] memory a = new address[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        address[] memory b = new address[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        prbTest._assertEq(a, b, EXPECT_PASS);
    }

    function testAssertEq__BoolArray__FailElements() external {
        bool[] memory a = new bool[](1);
        bool[] memory b = new bool[](1);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [bool[]]");
        a[0] = false;
        b[0] = true;
        prbTest._assertEq(a, b, EXPECT_FAIL);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [bool[]]");
        a[0] = true;
        b[0] = false;
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__BoolArray__FailLengths(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        bool[] memory a = new bool[](lenA);
        bool[] memory b = new bool[](lenB);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [bool[]]");
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__BoolArray__Err__FailElements() external {
        bool[] memory a = new bool[](1);
        bool[] memory b = new bool[](1);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        a[0] = false;
        b[0] = true;
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        a[0] = true;
        b[0] = false;
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__BoolArray__Err__FailLengths(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        bool[] memory a = new bool[](lenA);
        bool[] memory b = new bool[](lenB);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__BoolArray__Pass() external {
        bool[] memory a = new bool[](1);
        bool[] memory b = new bool[](1);

        a[0] = false;
        b[0] = false;
        prbTest._assertEq(a, b, EXPECT_PASS);

        a[0] = true;
        b[0] = true;
        prbTest._assertEq(a, b, EXPECT_PASS);
    }

    function testAssertEq__BoolArray__Err__Pass() external {
        bool[] memory a = new bool[](1);
        bool[] memory b = new bool[](1);

        a[0] = false;
        b[0] = false;
        prbTest._assertEq(a, b, ERR, EXPECT_PASS);

        a[0] = true;
        b[0] = true;
        prbTest._assertEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertEq__Bytes32Array__FailElements(bytes32 e1) external {
        vm.assume(e1 != bytes32(uint256(0x00)));

        bytes32[] memory a = new bytes32[](3);
        bytes32[] memory b = new bytes32[](3);
        b[1] = e1;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [bytes32[]]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Bytes32Array__FailLengths(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        bytes32[] memory a = new bytes32[](lenA);
        bytes32[] memory b = new bytes32[](lenB);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [bytes32[]]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Bytes32Array__Err__FailElements(bytes32 e1) external {
        vm.assume(e1 != bytes32(uint256(0x00)));

        bytes32[] memory a = new bytes32[](3);
        bytes32[] memory b = new bytes32[](3);
        b[1] = e1;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Bytes32Array__Err__Faillengths(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        bytes32[] memory a = new bytes32[](lenA);
        bytes32[] memory b = new bytes32[](lenB);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Bytes32Array__Err__Pass(bytes32 e0, bytes32 e1, bytes32 e2) external {
        bytes32[] memory a = new bytes32[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        bytes32[] memory b = new bytes32[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        prbTest._assertEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertEq__Bytes32Array__Pass(bytes32 e0, bytes32 e1, bytes32 e2) external {
        bytes32[] memory a = new bytes32[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        bytes32[] memory b = new bytes32[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        prbTest._assertEq(a, b, EXPECT_PASS);
    }

    function testAssertEq__Int256Array__FailElements(int256 e1) external {
        vm.assume(e1 != 0);

        int256[] memory a = new int256[](3);
        int256[] memory b = new int256[](3);
        b[1] = e1;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [int256[]]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Int256Array__FailLengths(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        int256[] memory a = new int256[](lenA);
        int256[] memory b = new int256[](lenB);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [int256[]]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Int256Array__Err__FailElements(int256 e1) external {
        vm.assume(e1 != 0);

        int256[] memory a = new int256[](3);
        int256[] memory b = new int256[](3);
        b[1] = e1;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Int256Array__Err__FailLengths(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        int256[] memory a = new int256[](lenA);
        int256[] memory b = new int256[](lenB);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Int256Array__Err__Pass(int256 e0, int256 e1, int256 e2) external {
        int256[] memory a = new int256[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        int256[] memory b = new int256[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        prbTest._assertEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertEq__Int256Array__Pass(int256 e0, int256 e1, int256 e2) external {
        int256[] memory a = new int256[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        int256[] memory b = new int256[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        prbTest._assertEq(a, b, EXPECT_PASS);
    }

    function testAssertEq__StringArray__FailElements(string memory e1) external {
        vm.assume(!eq(e1, ""));

        string[] memory a = new string[](3);
        string[] memory b = new string[](3);
        b[1] = e1;
        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [string[]]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__StringArray__FailLengths(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        string[] memory a = new string[](lenA);
        string[] memory b = new string[](lenB);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [string[]]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__StringArray__Err__FailElements(string memory e1) external {
        vm.assume(!eq(e1, ""));

        string[] memory a = new string[](3);
        string[] memory b = new string[](3);
        b[1] = e1;
        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__StringArray__Err__FailLengths(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        string[] memory a = new string[](lenA);
        string[] memory b = new string[](lenB);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__StringArray__Err__Pass(string memory e0, string memory e1, string memory e2) external {
        string[] memory a = new string[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        string[] memory b = new string[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        prbTest._assertEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertEq__StringArray__Pass(string memory e0, string memory e1, string memory e2) external {
        string[] memory a = new string[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        string[] memory b = new string[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;
        prbTest._assertEq(a, b, EXPECT_PASS);
    }

    function testAssertEq__Uint256Array__FailElements(uint256 e1) external {
        vm.assume(e1 != 0);

        uint256[] memory a = new uint256[](3);
        uint256[] memory b = new uint256[](3);
        b[1] = e1;

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [uint256[]]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Uint256Array__FailLengths(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        uint256[] memory a = new uint256[](lenA);
        uint256[] memory b = new uint256[](lenB);

        vm.expectEmit(false, false, false, true);
        emit Log("Error: a == b not satisfied [uint256[]]");
        prbTest._assertEq(a, b, EXPECT_FAIL);
    }

    function testAssertEq__Uint256Array__Err__FailElements(uint256 e1) external {
        vm.assume(e1 != 0);

        uint256[] memory a = new uint256[](3);
        uint256[] memory b = new uint256[](3);
        b[1] = e1;

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Uint256Array__Err__FailElements(uint256 lenA, uint256 lenB) external {
        vm.assume(lenA != lenB);
        vm.assume(lenA <= 10_000);
        vm.assume(lenB <= 10_000);

        uint256[] memory a = new uint256[](lenA);
        uint256[] memory b = new uint256[](lenB);

        vm.expectEmit(false, false, false, true);
        emit LogNamedString("Error", ERR);
        prbTest._assertEq(a, b, ERR, EXPECT_FAIL);
    }

    function testAssertEq__Uint256Array__Err__Pass(uint256 e0, uint256 e1, uint256 e2) external {
        uint256[] memory a = new uint256[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        uint256[] memory b = new uint256[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        prbTest._assertEq(a, b, ERR, EXPECT_PASS);
    }

    function testAssertEq__Uint256Array__Pass(uint256 e0, uint256 e1, uint256 e2) external {
        uint256[] memory a = new uint256[](3);
        a[0] = e0;
        a[1] = e1;
        a[2] = e2;

        uint256[] memory b = new uint256[](3);
        b[0] = e0;
        b[1] = e1;
        b[2] = e2;

        prbTest._assertEq(a, b, EXPECT_PASS);
    }
}
