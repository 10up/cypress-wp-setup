#/bin/bash

if [[ -z "$WORDPRESS_VERSION" ]]; then
	WORDPRESS_VERSION = 'latest'
fi
echo "ℹ︎ WORDPRESS_VERSION is $WORDPRESS_VERSION"

echo "ℹ︎ Installing dependencies"
npm install --silent

echo "ℹ︎ Setting up cypress-wp-setup binary"
npm link

echo "ℹ︎ Initialize default npm"
cd ~
mkdir cypress-test && cd cypress-test
npm init -y --silent

echo "ℹ︎ Running cypress setup script"
cypress-wp-setup

echo "ℹ︎ Setting WordPress version"
./tests/bin/set-core-version.js $WORDPRESS_VERSION

echo "ℹ︎ Create a dummy plugin"
cat <<EOT >> dummy.php
<?php
/**
 * Plugin Name: Dummy plugin
 */
add_action( 'init', '__return_false' );
EOT

echo "ℹ︎ Starting WordPress environment"
npm run env:start --silent

echo "ℹ︎ Running Cypress test"
npm run cypress:run
