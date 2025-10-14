#!/bin/bash

# Exit on error
set -e

# ✅ 1. Validate input
if [ -z "$1" ]; then
  echo "❌ Usage: ./test-pipeline.sh <branch-name>"
  exit 1
fi

# ✅ 2. Assign variables
BRANCH="$1"
TARGET_BRANCH="develop/2025"
CI_FILE="test.txt"
COMMIT_MSG="Test commit from script for branch $BRANCH"

# ✅ 3. Create new branch
git checkout -b "$BRANCH"

# ✅ 4. Write the branch name to test.txt
echo "$BRANCH" > "$CI_FILE"

# ✅ 5. Commit and push
git add "$CI_FILE"
git commit -m "$COMMIT_MSG"
git push -u origin "$BRANCH"

# ✅ 6. Prompt to open Merge Request
echo ""
echo "🚀 Branch '$BRANCH' has been pushed."
echo "👉 Now open a Merge Request from '$BRANCH' to '$TARGET_BRANCH':"