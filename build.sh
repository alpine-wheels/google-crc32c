#!/bin/sh

set -e

# install dependencies
# apk add --no-cache gcc libffi-dev musl-dev

# build
CRC32C_PURE_PYTHON=1 pip wheel --no-deps --requirement requirements.txt
