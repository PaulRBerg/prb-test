# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Common Changelog](https://common-changelog.org/).

[0.3.1]: https://github.com/paulrberg/prb-math/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/paulrberg/prb-math/compare/v0.2.1...v0.3.0
[0.2.1]: https://github.com/paulrberg/prb-math/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/paulrberg/prb-math/compare/v0.1.3...v0.2.0
[0.1.3]: https://github.com/paulrberg/prb-math/compare/v0.1.2...v0.1.3
[0.1.2]: https://github.com/paulrberg/prb-math/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/paulrberg/prb-math/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/paulrberg/prb-test/releases/tag/v0.1.0

## [0.3.1] - 2022-12-12

### Changed

- Improve argument names in `Vm` (@paulrberg)

## [0.3.0] - 2022-12-06

### Added

- Add `envOr` cheatcodes (@paulrberg)
- Add `fsMetadata` cheatcode (@paulrberg)

### Fixed

- Make `accesses` non-view (@paulrberg)
- Make `getRecordedLogs` non-view (@paulrberg)

## [0.2.1] - 2022-12-04

### Changed

- Fix Prettier formatting issues (@paulrberg)

## [0.2.0] - 2022-12-04

### Changed

- Improve wording in CHANGELOG (@paulrberg)
- Name arguments in `Vm` interface functions (@paulrberg)
- Sync `Vm` with forge-std (@paulrberg)
- Set cheatcode mutability/ visibility (@paulrberg)
- Split `Vm` in `Vm` and `VmSafe` interfaces (@paulrberg)

### Added

- Add `allowCheatcodes` cheatcode (@paulrberg)
- Add `broadcast` and `startBroadcast` private key overloads (@paulrberg)
- Add `deriveKey` and `rememberKey` cheatcodes (@paulrberg)
- Add `difficulty` cheatcode (@paulrberg)
- Add fork-related cheatcodes (@paulrberg)
- Add `getDeployedCode` (@paulrberg)
- Add parsing cheatcodes (@paulrberg)
- Add `parseJson` helper functions in `Vm` (@paulrberg)
- Add `projectRoot` cheatcode (@paulrberg)
- Add `transact` cheatcode (@paulrberg)
- Add emitter in `Log` struct (@paulrberg)

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
