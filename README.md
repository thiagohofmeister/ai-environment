# codex-home-backup

Backup versionado de partes úteis de `~/.codex`:

- `config.toml`
- `rules/`
- `skills/`

O objetivo é preservar configurações e skills entre máquinas sem carregar estado volátil.

## O que este repo representa

Este repositório não tenta espelhar todo `~/.codex`.
Ele guarda apenas o que vale portar entre máquinas:

- configurações de Codex
- regras e permissões locais
- skills instaladas manualmente

Não versiona estado de sessão, credenciais nem caches.

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

## Bootstrap em uma máquina nova

1. Clone o repositório em um local persistente:

```bash
git clone git@github.com:thiagohofmeister/ai-environment.git ~/git/codex-home-backup
```

2. Entre no diretório do repo:

```bash
cd ~/git/codex-home-backup
```

3. Restaure os arquivos para `~/.codex`:

```bash
./restore-to-home.sh
```

4. Reinicie o Codex para carregar skills e configurações novas.

## Atualização do backup

Sempre que mudar algo em `~/.codex`, rode:

```bash
./sync-from-home.sh
git add .
git commit -m "Update codex home backup"
git push
```

## Estrutura

- `config.toml`: modelo, approvals e confiança por projeto
- `rules/`: regras e prefixos aprovados
- `skills/`: skills instaladas localmente

## Observações

- `sync-from-home.sh` copia apenas o conteúdo útil de `~/.codex`.
- `restore-to-home.sh` sobrescreve `~/.codex/config.toml`, `~/.codex/rules/default.rules` e `~/.codex/skills/`.
- Se você instalar novas skills no futuro, sincronize antes de trocar de máquina.
