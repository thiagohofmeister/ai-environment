#!/bin/sh
set -eu

REPO_URL="${1:-git@github.com:thiagohofmeister/ai-environment.git}"
TARGET_DIR="${2:-$HOME/git/codex-home-backup}"

if [ -d "$TARGET_DIR/.git" ]; then
  echo "Repo already exists at $TARGET_DIR"
else
  mkdir -p "$(dirname "$TARGET_DIR")"
  git clone "$REPO_URL" "$TARGET_DIR"
fi

cd "$TARGET_DIR"
./restore-to-home.sh

echo "Bootstrap complete."

