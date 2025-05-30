#!/bin/bash
set -e

cd di_maria_homecoming

git add slides.md package.json ../di_maria_homecoming/.linter.sh

git commit -m "Add Slidev presentation for Di Maria's Homecoming; fix lint/build tooling scripts"

git push

echo "Committed and pushed all requested changes to GitHub."
