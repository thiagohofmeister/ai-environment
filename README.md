# codex-home-backup

Backup versionado de partes úteis de `~/.codex`:

- `config.toml`
- `rules/`
- `skills/`

O objetivo é preservar configurações e skills entre máquinas sem carregar estado volátil.

## O que fica de fora

- `auth.json`
- `cache/`
- `history.jsonl`
- `logs_*.sqlite*`
- `state_*.sqlite*`
- `goals_*.sqlite*`
- `memories_*.sqlite*`
- `session_index.jsonl`
- `shell_snapshots/`
- `.tmp/`
- `installation_id`

## Uso

Para atualizar o backup a partir da máquina atual:

```bash
./sync-from-home.sh
```

Para restaurar em outra máquina:

```bash
./restore-to-home.sh
```

## Estrutura

- `config.toml`: modelo, approvals e confiança por projeto
- `rules/`: regras e prefixos aprovados
- `skills/`: skills instaladas localmente

