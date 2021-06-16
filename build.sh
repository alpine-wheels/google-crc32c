#!/bin/sh

set -e

# install dependencies
apk add --no-cache gcc

# build
pip wheel --no-deps --requirement requirements.txt
