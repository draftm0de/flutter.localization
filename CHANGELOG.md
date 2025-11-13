# Changelog

All notable changes to this project are tracked here. This file follows the
[Keep a Changelog](https://keepachangelog.com/en/1.0.0/) convention.

## [Unreleased]
### Added
- Localization-focused guidance in `AGENTS.md`, including how and when to rebuild the generated `DraftModeLocalizations` delegate.
- `test/draftmode_localizations_test.dart` to lock down delegate wiring and translated strings.

### Changed
- `README.md` now highlights the localization facade purpose and only lists the upstream localization bundle.
- `lib/localizations.dart` documents the public export so consuming packages know where the delegate comes from.

## [1.0.0] - 2025-11-13
### Added
- Initial facade package exporting `draftmode_worker` APIs.
