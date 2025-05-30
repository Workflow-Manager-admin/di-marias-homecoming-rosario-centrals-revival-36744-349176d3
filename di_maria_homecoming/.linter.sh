#!/bin/bash
# Use this script for running linter in a CI or local environment

set -e

cd "$(dirname "$0")"

if command -v npx >/dev/null 2>&1; then
  npx eslint --ext .js,.ts,.vue .
else
  echo "npx not found. Please install Node.js and make sure npx is available."
  exit 1
fi

if [ $? -eq 0 ]; then
  echo "Linting passed!"
else
  echo "Linting failed!"
  exit 1
fi
