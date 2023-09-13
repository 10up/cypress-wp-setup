# Cypress Setup for WordPress

> NPM package to set up boilerplate for Cypress testing.

[![Support Level](https://img.shields.io/badge/support-beta-blueviolet.svg)](#support-level) [![MIT License](https://img.shields.io/github/license/10up/cypress-wp-setup.svg)](https://github.com/10up/cypress-wp-setup/blob/develop/LICENSE.md)

## Usage

The script will do everything required: install dependencies, add scripts to your package.json and create some files required to run [Cypress](https://www.cypress.io/) and [wp-env](https://developer.wordpress.org/block-editor/reference-guides/packages/packages-env/).

```bash
# Go to your project folder
cd ~/my-plugin

# (Optional) Initialize NPM if not yet
npm init

# Run the boilerplate script
npx github:10up/cypress-wp-setup
```

Now you are able to manage wp-env and run Cypress tests.

## Command-line tools

### WordPress environment

Always use this command to start the environment in GitHub Actions because it will apply the fix to make permalinks working.

```bash
npm run env:start
```

This is a shortcut to [wp-env](https://developer.wordpress.org/block-editor/reference-guides/packages/packages-env/):

```bash
npm run env
```

### Set WordPress version

```bash
./tests/bin/set-core-version.js <version>
```

`<version>` might be:

- `latest` to use current WordPress release
- `master` to use nightly build
- `5.9` to specify a version

Numeric version should match existing tags [in WordPress repository](https://github.com/WordPress/WordPress/tags).

### Cypress

```bash
# Run tests
npm run cypress:run

# Or open debug Chromium
npm run cypress:open
```

## Cypress commands

The boilerplate includes a single basic example test.

The setup includes [Cypress WP Utils](https://10up.github.io/cypress-wp-utils/) library with a set of Cypress commands designed to write tests for WordPress.

```javascript
cy.login();

cy.activatePlugin("my-plugin");

cy.createPost({
  title: "Post Title",
  content: 'Test Content',
});
```

## GitHub Actions workflow

The distribution includes the config for GitHub Actions in `.github/workflows/cypress.yml`. It will install dependencies, run wp-env, and perform tests.

You can specify WordPress versions to test against in the matrix:

```yml
strategy:
  matrix:
    core:
      - {name: 'WP latest', version: 'latest'}
      - {name: 'WP minimum', version: 'WordPress/WordPress#5.2'}
      - {name: 'WP trunk', version: 'WordPress/WordPress#master'}
```

The job includes 2 optional steps, you can update them and make required (removing `continue-on-error` flag):

```yml
- name: Composer (optional)
  run: composer install
  continue-on-error: true
- name: Build (optional)
  run: npm run build
  continue-on-error: true
```

## Support Level

**Beta:** This project is quite new and we're not sure what our ongoing support level for this will be. Bug reports, feature requests, questions, and pull requests are welcome. If you like this project please let us know, but be cautious using this in a Production environment!

## Contributing

Please read [CODE_OF_CONDUCT.md](https://github.com/10up/cypress-wp-setup/blob/develop/CODE_OF_CONDUCT.md) for details on our code of conduct, [CONTRIBUTING.md](https://github.com/10up/cypress-wp-setup/blob/develop/CONTRIBUTING.md) for details on the process for submitting pull requests to us, and [CREDITS.md](https://github.com/10up/cypress-wp-setup/blob/develop/CREDITS.md) for a list of maintainers, contributors, and libraries used in this repository.

## Like what you see?

[![Work with us](https://10up.com/uploads/2016/10/10up-Github-Banner.png)](http://10up.com/contact/)
