#!/bin/sh
set -eu

HOME_CODEX="${HOME}/.codex"
SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"

mkdir -p "$SCRIPT_DIR/rules" "$SCRIPT_DIR/skills"

cp "$HOME_CODEX/config.toml" "$SCRIPT_DIR/config.toml"
cp "$HOME_CODEX/rules/default.rules" "$SCRIPT_DIR/rules/default.rules"

rm -rf "$SCRIPT_DIR/skills"/*
for d in "$HOME_CODEX"/skills/*; do
  [ "$(basename "$d")" = ".system" ] && continue
  cp -R "$d" "$SCRIPT_DIR/skills/"
done

printf 'Synced from %s\n' "$HOME_CODEX"

