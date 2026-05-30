#!/bin/sh
set -eu

HOME_CODEX="${HOME}/.codex"
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

mkdir -p "$HOME_CODEX/rules" "$HOME_CODEX/skills"

cp "$SCRIPT_DIR/config.toml" "$HOME_CODEX/config.toml"
cp "$SCRIPT_DIR/rules/default.rules" "$HOME_CODEX/rules/default.rules"

rm -rf "$HOME_CODEX/skills"/*
for d in "$SCRIPT_DIR"/skills/*; do
  cp -R "$d" "$HOME_CODEX/skills/"
done

printf 'Restored to %s\n' "$HOME_CODEX"

