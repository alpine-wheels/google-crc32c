#!/bin/sh

set -e

# install dependencies
apk add --no-cache gcc libffi-dev musl-dev

# build
pip wheel -vvv --no-deps --requirement requirements.txt
