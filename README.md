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
- `WordPress/WordPress#master` to use nightly build
- `WordPress/WordPress#5.9` to specify a version

### Cypress

```bash
# Run tests
npm run cypress:run

# Or open debug Chromium
npm run cypress:open
```

The boilerplate includes a single basic example test.
