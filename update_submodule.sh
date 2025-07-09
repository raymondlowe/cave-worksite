#!/bin/bash
# update_submodule.sh
# Usage: ./update_submodule.sh <submodule-dir> <commit-message>
# Example: ./update_submodule.sh melissani-cave.com "Update shopping.html and propagate submodule pointer"

set -e

if [ $# -lt 2 ]; then
  echo "Usage: $0 <submodule-dir> <commit-message>"
  exit 1
fi

SUBMODULE_DIR="$1"
shift
COMMIT_MSG="$*"

# Step 1: Commit and push changes in the submodule
echo "[1/3] Committing and pushing changes in $SUBMODULE_DIR..."
cd "$SUBMODULE_DIR"
git add .
git commit -m "$COMMIT_MSG" || echo "No changes to commit in submodule."
git push
cd ..

# Step 2: Update submodule pointer in parent repo
echo "[2/3] Updating submodule pointer in parent repo..."
git add "$SUBMODULE_DIR"
git commit -m "Submodule $SUBMODULE_DIR: $COMMIT_MSG" || echo "No changes to commit in parent repo."

git push

echo "[3/3] Done. Submodule and parent repo are up to date."
