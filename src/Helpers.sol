// solhint-disable func-visibility
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

/// @dev Calculates the absolute value of `a`.
function abs(int256 a) pure returns (uint256 result) {
    // The unary operator "-" cannot be applied to "type(int256).min".
    if (a == type(int256).min) {
        return uint256(type(int256).min);
    }

    unchecked {
        result = uint256(a > 0 ? a : -a);
    }
}

/// @dev Checks if `a` contains `b`.
function contains(address[] memory a, address b) pure returns (bool result) {
    address item;
    uint256 length = a.length;

    for (uint256 i = 0; i < length; ) {
        item = a[i];
        if (item == b) {
            return true;
        }
        unchecked {
            i += 1;
        }
    }

    result = false;
}

/// @dev Checks if `a` contains `b`.
function contains(bytes32[] memory a, bytes32 b) pure returns (bool result) {
    bytes32 item;
    uint256 length = a.length;

    for (uint256 i = 0; i < length; ) {
        item = a[i];
        if (item == b) {
            return true;
        }
        unchecked {
            i += 1;
        }
    }

    result = false;
}

/// @dev Checks if `a` contains `b`.
function contains(string[] memory a, string memory b) pure returns (bool result) {
    bytes32 bHash = keccak256(abi.encode(b));
    string memory item;
    uint256 length = a.length;

    for (uint256 i = 0; i < length; ) {
        item = a[i];
        if (keccak256(abi.encode(item)) == bHash) {
            return true;
        }
        unchecked {
            i += 1;
        }
    }

    result = false;
}

/// @dev Checks if `a` contains `b`.
function contains(int256[] memory a, int256 b) pure returns (bool result) {
    int256 item;
    uint256 length = a.length;

    for (uint256 i = 0; i < length; ) {
        item = a[i];
        if (item == b) {
            return true;
        }
        unchecked {
            i += 1;
        }
    }

    return false;
}

/// @dev Checks if `a` contains `b`.
function contains(uint256[] memory a, uint256 b) pure returns (bool result) {
    uint256 item;
    uint256 length = a.length;

    for (uint256 i = 0; i < length; ) {
        item = a[i];
        if (item == b) {
            return true;
        }
        unchecked {
            i += 1;
        }
    }

    result = false;
}

/// @dev Calculates the absolute delta between `a` and `b`.
function delta(int256 a, int256 b) pure returns (uint256 result) {
    // If XOR of a and b is greater than -1, a and b have the same sign. This works due to two's complement.
    // See https://twitter.com/PaulRBerg/status/1546957951579062272.
    if ((a ^ b) > -1) {
        result = delta(abs(a), abs(b));
    } else {
        unchecked {
            result = abs(a) + abs(b);
        }
    }
}

/// @dev Calculates the absolute delta between `a` and `b`.
function delta(uint256 a, uint256 b) pure returns (uint256 result) {
    unchecked {
        result = a > b ? a - b : b - a;
    }
}

/// @dev Checks if `a` equals `b`.
function eq(address[] memory a, address[] memory b) pure returns (bool result) {
    result = keccak256(abi.encode(a)) == keccak256(abi.encode(b));
}

/// @dev Checks if `a` equals `b`.
function eq(bool[] memory a, bool[] memory b) pure returns (bool result) {
    result = keccak256(abi.encode(a)) == keccak256(abi.encode(b));
}

/// @dev Checks if `a` equals `b`.
function eq(bytes memory a, bytes memory b) pure returns (bool result) {
    result = keccak256(a) == keccak256(b);
}

/// @dev Checks if `a` equals `b`.
function eq(bytes32 a, bytes32 b) pure returns (bool result) {
    result = keccak256(abi.encode(a)) == keccak256(abi.encode(b));
}

/// @dev Checks if `a` equals `b`.
function eq(bytes32[] memory a, bytes32[] memory b) pure returns (bool result) {
    result = keccak256(abi.encode(a)) == keccak256(abi.encode(b));
}

/// @dev Checks if `a` equals `b`.
function eq(string memory a, string memory b) pure returns (bool result) {
    result = keccak256(abi.encode(a)) == keccak256(abi.encode(b));
}

/// @dev Checks if `a` equals `b`.
function eq(string[] memory a, string[] memory b) pure returns (bool result) {
    result = keccak256(abi.encode(a)) == keccak256(abi.encode(b));
}

/// @dev Checks if `a` equals `b`.
function eq(int256[] memory a, int256[] memory b) pure returns (bool result) {
    result = keccak256(abi.encode(a)) == keccak256(abi.encode(b));
}

/// @dev Checks if `a` equals `b`.
function eq(uint256[] memory a, uint256[] memory b) pure returns (bool result) {
    result = keccak256(abi.encode(a)) == keccak256(abi.encode(b));
}
