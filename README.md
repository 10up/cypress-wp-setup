# cypress-wp-setup

NPM package to set up boilerplate for Cypress testing.

Usage:

```bash
# Go to your project folder
cd ~/my-plugin

# (Optional) Initialize NPM if not yet
npm init

# Run the boilerplate script
npx github:10up/cypress-wp-setup
```

The script will do everything required: install dependencies, add scripts to your package.json and create some files required to run [Cypress](https://www.cypress.io/) and [wp-env](https://developer.wordpress.org/block-editor/reference-guides/packages/packages-env/).

Now you are able to manage wp-env and run Cypress tests.

## Commands

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

The boilerplate includes a single basic example test.

## GitHub Actions workflow

The distribution includes the config for GitHub Actions in `.github/workflows/cypress.yml`. It supposed to install dependencies, run wp-env and perform tests.

You can specify WordPress versions to test against in the matrix:

```yml
strategy:
  matrix:
    core:
      - {name: 'WP latest', version: 'latest'}
      - {name: 'WP minimum', version: 'WordPress/WordPress#4.9'}
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
