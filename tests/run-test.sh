#/bin/bash

# install dependencies
npm install

# setup bin
npm link

# initialize default npm
cd ~
mkdir cypress-test && cd cypress-test
npm init -y

# setup cypress suite
cypress-wp-setup

./tests/bin/set-core-version.js $WORDPRESS_VERSION

# start WordPress environment
npm run env:start

# perform cypress test
npm run cypress:run
