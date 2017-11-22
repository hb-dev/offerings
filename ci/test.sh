#!/bin/bash

set -e -x

pushd offerings
  bundle install
  bundle exec rspec
popd
