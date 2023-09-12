# Changelog

All notable changes to this project will be documented in this file, per [the Keep a Changelog standard](http://keepachangelog.com/), and this project will adhere to [Semantic Versioning](http://semver.org/).

## [Unreleased]

## [0.1.0] - 2023-09-13

Initial public release. 🎉

### Added

- `tsconfig.json` file for code completion support (props [@dinhtungdu](https://github.com/dinhtungdu) via [#2](https://github.com/10up/cypress-wp-setup/pull/2)).
- Add all standard workflow and informational files (props [@cadic](https://github.com/cadic), [@jeffpaul](https://github.com/jeffpaul) via [#1](https://github.com/10up/cypress-wp-setup/pull/1), [#6](https://github.com/10up/cypress-wp-setup/pull/6), [#7](https://github.com/10up/cypress-wp-setup/pull/7), [#10](https://github.com/10up/cypress-wp-setup/pull/10), [#12](https://github.com/10up/cypress-wp-setup/pull/12), [#13](https://github.com/10up/cypress-wp-setup/pull/13), [#16](https://github.com/10up/cypress-wp-setup/pull/16), [#18](https://github.com/10up/cypress-wp-setup/pull/18)).
- Ability to specify just the WordPress version to run tests on, not the full `WordPress/WordPress#` syntax (props [@cadic](https://github.com/cadic) via [#9](https://github.com/10up/cypress-wp-setup/pull/9)).
- Use the `@10up/cypress-wp-utils` library (props [@cadic](https://github.com/cadic), [@peterwilsoncc](https://github.com/peterwilsoncc), [@Sidsector9](https://github.com/Sidsector9) via [#11](https://github.com/10up/cypress-wp-setup/pull/11), [#15](https://github.com/10up/cypress-wp-setup/pull/15), [#31](https://github.com/10up/cypress-wp-setup/pull/31)).
- Preserve cookies to keep a user logged in during tests (props [@cadic](https://github.com/cadic) via [#14](https://github.com/10up/cypress-wp-setup/pull/14)).
- Set `chromeWebSecurity` to `false` in our Cypress config (props [@dkotter](https://github.com/dkotter), [@iamdharmesh](https://github.com/iamdharmesh) via [#34](https://github.com/10up/cypress-wp-setup/pull/34)).
- New command, `env:destroy` that is used to destroy an environment (props [@dkotter](https://github.com/dkotter), [@Sidsector9](https://github.com/Sidsector9) via [#35](https://github.com/10up/cypress-wp-setup/pull/35)).

### Changed

- Run `npm install` script as a child process (props [@cadic](https://github.com/cadic), [@iamdharmesh](https://github.com/iamdharmesh) via [#19](https://github.com/10up/cypress-wp-setup/pull/19)).
- Update minimum WordPress version from 4.9 to 5.7 (props [@iamdharmesh](https://github.com/iamdharmesh), [@cadic](https://github.com/cadic), [@Sidsector9](https://github.com/Sidsector9) via [#20](https://github.com/10up/cypress-wp-setup/pull/20), [#28](https://github.com/10up/cypress-wp-setup/pull/28)).
- Migrated from Cypress 9 to Cypress 13 (props [@iamdharmesh](https://github.com/iamdharmesh), [@cadic](https://github.com/cadic), [@ravinderk](https://github.com/ravinderk) via [#23](https://github.com/10up/cypress-wp-setup/pull/23), [#37](https://github.com/10up/cypress-wp-setup/pull/37)).

### Fixed

- Remove existing `.wp-env.override.json` file if running tests on the `latest` WordPress version (props [@cadic](https://github.com/cadic) via [#8](https://github.com/10up/cypress-wp-setup/pull/8)).
- Addressed a test failure due to invalid `config.baseUrl` (props [@iamdharmesh](https://github.com/iamdharmesh), [@peterwilsoncc](https://github.com/peterwilsoncc) via [#30](https://github.com/10up/cypress-wp-setup/pull/30)).
- Addressed a few issues with the latest version of `wp-env` (props [@dkotter](https://github.com/dkotter), [@Sidsector9](https://github.com/Sidsector9) via [#35](https://github.com/10up/cypress-wp-setup/pull/35)).

### Security

- Upgrade `ansi-regex` from 2.1.1 to 6.0.1 (props [@cadic](https://github.com/cadic) via [#17](https://github.com/10up/cypress-wp-setup/pull/17)).
- Upgrade `fs-extra` from 10.1.0 to 11.1.0 (props [@cadic](https://github.com/cadic), [@iamdharmesh](https://github.com/iamdharmesh) via [#32](https://github.com/10up/cypress-wp-setup/pull/32)).

[Unreleased]: https://github.com/10up/cypress-wp-setup/compare/trunk...develop
[0.1.0]: https://github.com/10up/cypress-wp-setup/releases/tag/0.1.0
