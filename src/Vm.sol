// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

/// @dev An EVM interpreter written with testing and debugging in mind. This is usually either HEVM or REVM.
interface Vm {
    struct Log {
        bytes32[] topics;
        bytes data;
    }

    /// @dev Gets all accessed reads and write slot from a recording session, for a given address.
    function accesses(address) external returns (bytes32[] memory reads, bytes32[] memory writes);

    /// @dev Gets the address for a given private key, (privateKey) => (address).
    function addr(uint256) external returns (address);

    //// @dev Returns the currently active fork. Reverts if no fork is currently active.
    function activeFork() external returns (uint256);

    /// @dev If the condition is false, discard this run's fuzz inputs and generate new ones.
    function assume(bool) external;

    /// @dev Using the address that calls the test contract, has the next call (at this call depth only)
    /// create a transaction that can later be signed and sent onchain.
    function broadcast() external;

    /// @dev Has the next call (at this call depth only) create a transaction with the address provided as
    /// the sender that can later be signed and sent onchain.
    function broadcast(address) external;

    /// @dev Sets block.chainid.
    function chainId(uint256) external;

    /// @dev Clears all mocked calls.
    function clearMockedCalls() external;

    /// @dev Sets block.coinbase (who).
    function coinbase(address) external;

    /// @dev Creates a new fork with the given endpoint and block and returns the identifier of the fork.
    function createFork(string calldata, uint256) external returns (uint256);

    /// @dev Creates a new fork with the given endpoint and the _latest_ block and returns the identifier of the fork.
    function createFork(string calldata) external returns (uint256);

    /// @dev Creates _and_ also selects a new fork with the given endpoint and block and returns the identifier of the
    /// fork.
    function createSelectFork(string calldata, uint256) external returns (uint256);

    /// @dev Creates _and_ also selects a new fork with the given endpoint and the latest block and returns the
    /// identifier of the fork.
    function createSelectFork(string calldata) external returns (uint256);

    /// @dev Sets an address' balance, (who, newBalance).
    function deal(address, uint256) external;

    /// @dev Reads environment variables, (name) => (value).
    function envAddress(string calldata) external returns (address);

    function envBool(string calldata) external returns (bool);

    function envBytes(string calldata) external returns (bytes memory);

    function envBytes32(string calldata) external returns (bytes32);

    function envInt(string calldata) external returns (int256);

    function envString(string calldata) external returns (string memory);

    function envUint(string calldata) external returns (uint256);

    /// @dev Reads environment variables as arrays, (name, delim) => (value[]).
    function envAddress(string calldata, string calldata) external returns (address[] memory);

    function envBool(string calldata, string calldata) external returns (bool[] memory);

    function envBytes(string calldata, string calldata) external returns (bytes[] memory);

    function envBytes32(string calldata, string calldata) external returns (bytes32[] memory);

    function envInt(string calldata, string calldata) external returns (int256[] memory);

    function envString(string calldata, string calldata) external returns (string[] memory);

    function envUint(string calldata, string calldata) external returns (uint256[] memory);

    /// @dev Sets an address' code, (who, newCode).
    function etch(address, bytes calldata) external;

    /// @dev Expects a call to an address with the specified calldata.
    /// Calldata can either be a strict or a partial match.
    function expectCall(address, bytes calldata) external;

    /// @dev Expects a call to an address with the specified msg.value and calldata.
    function expectCall(
        address,
        uint256,
        bytes calldata
    ) external;

    /// @dev Prepare an expected log with (bool checkTopic1, bool checkTopic2, bool checkTopic3, bool checkData).
    /// Call this function, then emit an event, then call a function. Internally after the call, we check if logs
    /// were emitted in the expected order with the expected topics and data (as specified by the booleans).
    function expectEmit(
        bool,
        bool,
        bool,
        bool
    ) external;

    function expectEmit(
        bool,
        bool,
        bool,
        bool,
        address
    ) external;

    /// @dev Expects an error on next call.
    function expectRevert(bytes calldata) external;

    function expectRevert(bytes4) external;

    function expectRevert() external;

    /// @dev Sets block.basefee (newBasefee).
    function fee(uint256) external;

    /// @dev Performs a foreign function call via the terminal, (stringInputs) => (result).
    function ffi(string[] calldata) external returns (bytes memory);

    /// @dev Gets the code from an artifact file. Takes in the relative path to the json file.
    function getCode(string calldata) external returns (bytes memory);

    /// @dev Gets the nonce of an account.
    function getNonce(address) external returns (uint64);

    /// @dev Gets all the recorded logs, () => (logs).
    function getRecordedLogs() external returns (Log[] memory);

    /// @dev Loads a storage slot from an address (who, slot).
    function load(address, bytes32) external returns (bytes32);

    /// @dev Labels an address in call traces.
    function label(address, string calldata) external;

    /// @dev Mocks a call to an address, returning specified data.
    /// Calldata can either be strict or a partial match, e.g. if you only pass a Solidity selector to the expected
    /// calldata, then the entire Solidity function will be mocked.
    function mockCall(
        address,
        bytes calldata,
        bytes calldata
    ) external;

    /// @dev Mocks a call to an address with a specific msg.value, returning specified data.
    /// Calldata match takes precedence over msg.value in case of ambiguity.
    function mockCall(
        address,
        uint256,
        bytes calldata,
        bytes calldata
    ) external;

    /// @dev Sets the *next* call's msg.sender to be the input address.
    function prank(address) external;

    /// @dev Sets the *next* call's msg.sender to be the input address, and the tx.origin to be the second input.
    function prank(address, address) external;

    /// @dev Reads the entire content of file to string, (path) => (data).
    function readFile(string calldata) external returns (string memory);

    /// @dev Reads next line of file to string, (path) => (line).
    function readLine(string calldata) external returns (string memory);

    /// @dev Records all storage reads and writes.
    function record() external;

    /// @dev Record all the transaction logs.
    function recordLogs() external;

    /// @dev Removes file. This cheatcode will revert in the following situations, but is not limited to just
    /// these cases:
    ///   - Path points to a directory.
    ///   - The file doesn't exist.
    ///   - The user lacks permissions to remove the file.
    /// (path) => ()
    function removeFile(string calldata) external;

    /// @dev Revert the state of the evm to a previous snapshot.
    /// Takes the snapshot id to revert to.
    /// This deletes the snapshot and all snapshots taken after the given snapshot id.
    function revertTo(uint256) external returns (bool);

    /// @dev Sets block.height (newHeight).
    function roll(uint256) external;

    /// @dev Updates the currently active fork to given block number. This is similar to `roll` but for the
    /// currently active fork.
    function rollFork(uint256) external;

    /// @dev Updates the given fork to given block number.
    function rollFork(uint256 forkId, uint256 blockNumber) external;

    //// @dev Returns the RPC url for the given alias.
    function rpcUrl(string calldata) external returns (string memory);

    //// @dev Returns all rpc urls and their aliases `[alias, url][]`.
    function rpcUrls() external returns (string[2][] memory);

    /// @dev Takes a fork identifier created by `createFork` and sets the corresponding forked state as active.
    function selectFork(uint256) external;

    /// @dev Sets environment variables, (name, value).
    function setEnv(string calldata, string calldata) external;

    /// @dev Sets the nonce of an account; must be higher than the current nonce of the account.
    function setNonce(address, uint64) external;

    /// @dev Signs data, (privateKey, digest) => (v, r, s).
    function sign(uint256, bytes32)
        external
        returns (
            uint8,
            bytes32,
            bytes32
        );

    /// @dev Snapshot the current state of the evm.
    /// Returns the id of the snapshot that was created.
    /// To revert a snapshot use `revertTo`.
    function snapshot() external returns (uint256);

    /// @dev Sets all subsequent calls' msg.sender to be the input address until `stopPrank` is called.
    function startPrank(address) external;

    /// @dev Sets all subsequent calls' msg.sender to be the input address until `stopPrank` is called, and
    /// the tx.origin to be the second input.
    function startPrank(address, address) external;

    /// @dev Resets subsequent calls' msg.sender to be `address(this)`.
    function stopPrank() external;

    /// @dev Stores a value to an address' storage slot, (who, slot, value).
    function store(
        address,
        bytes32,
        bytes32
    ) external;

    /// @dev Using the address that calls the test contract, has all subsequent calls (at this call depth only)
    /// create transactions that can later be signed and sent onchain.
    function startBroadcast() external;

    /// @dev Has all subsequent calls (at this call depth only) create transactions that can later be signed and
    /// sent onchain.
    function startBroadcast(address) external;

    /// @dev Stops collecting onchain transactions.
    function stopBroadcast() external;

    /// @dev Convert values to a string, (value) => (stringified value).
    function toString(address) external returns (string memory);

    function toString(bytes calldata) external returns (string memory);

    function toString(bytes32) external returns (string memory);

    function toString(bool) external returns (string memory);

    function toString(uint256) external returns (string memory);

    function toString(int256) external returns (string memory);

    /// @dev Writes data to file, creating a file if it does not exist, and entirely replacing its contents if it does.
    /// (path, data) => ()
    function writeFile(string calldata, string calldata) external;

    /// @dev Writes line to file, creating a file if it does not exist.
    /// (path, data) => ()
    function writeLine(string calldata, string calldata) external;

    /// @dev Sets block.timestamp (newTimestamp).
    function warp(uint256) external;
}
