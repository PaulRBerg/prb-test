# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Common Changelog](https://common-changelog.org/).

[0.2.0]: https://github.com/paulrberg/prb-math/compare/v0.1.3...v0.2.0
[0.1.3]: https://github.com/paulrberg/prb-math/compare/v0.1.2...v0.1.3
[0.1.2]: https://github.com/paulrberg/prb-math/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/paulrberg/prb-math/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/paulrberg/prb-test/releases/tag/v0.1.0

## [0.2.0] - 2022-12-04

### Changed

- Improve wording in CHANGELOG
- Name arguments in `Vm` interface functions
- Sync `Vm` with forge-std
- Set cheatcode mutability/ visibility
- Split `Vm` in `Vm` and `VmSafe` interfaces

### Added

- Add `allowCheatcodes` cheatcode
- Add `broadcast` and `startBroadcast` private key overloads
- Add `deriveKey` and `rememberKey` cheatcodes feat:
- Add `difficulty` cheatcode
- Add fork-related cheatcodes
- Add `getDeployedCode`
- Add parsing cheatcodes
- Add `parseJson` helper functions in `Vm`
- Add `projectRoot` cheatcode
- Add `transact` cheatcode
- Add emitter in `Log` struct

## [0.1.3] - 2022-10-29

### Changed

- Fix typos in README (@jordaniza, @paulrberg)
- Improve usage guides in README (@paulrberg)
- Make `IS_TEST` virtual (@paulrberg)
- Remove superfluous `bytes20` cast (@paulrberg)
- Update fuzzing configuration in `foundry.toml` (@paulrberg)

### Added

- Add more information in README (@paulrberg)

## [0.1.2] - 2022-07-17

### Fixed

- Switch to global import to fix the overload type checker bug in Solidity v0.8.12
  ([#5](https://github.com/paulrberg/prb-test/issues/5)) (@jordaniza, @paulrberg)

## [0.1.1] - 2022-07-15

### Fixed

- Add `pinst` as Node.js dev dependency to disable the `postinstall` life cycle script in production (@paulrberg)

## [0.1.0] - 2022-07-15

### Added

- First release (@paulrberg)
