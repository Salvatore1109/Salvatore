#!/usr/bin/env bash
# Installa skill, sub-agenti, linee guida e plugin di Claude Code per l'utente (tutti i progetti).
# Uso: dalla cartella del repository ->  bash claude-setup/installa.sh
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="$HOME/.claude"
mkdir -p "$DEST/skills" "$DEST/agents"

cp -R "$ROOT/.claude/skills/." "$DEST/skills/"
cp -R "$ROOT/.claude/agents/." "$DEST/agents/"
echo "Skill e sub-agenti copiati in $DEST"

if [ -f "$DEST/CLAUDE.md" ] && ! grep -q "Linee guida personali" "$DEST/CLAUDE.md"; then
  cp "$DEST/CLAUDE.md" "$DEST/CLAUDE.md.backup"
  { echo; cat "$ROOT/claude-setup/CLAUDE-globale.md"; } >> "$DEST/CLAUDE.md"
  echo "Linee guida aggiunte al tuo CLAUDE.md esistente (backup: CLAUDE.md.backup)"
elif [ ! -f "$DEST/CLAUDE.md" ]; then
  cp "$ROOT/claude-setup/CLAUDE-globale.md" "$DEST/CLAUDE.md"
  echo "Creato $DEST/CLAUDE.md"
fi

if command -v claude >/dev/null 2>&1; then
  claude plugin marketplace add obra/superpowers-marketplace || true
  for p in superpowers@superpowers-marketplace frontend-design@claude-plugins-official \
           playwright@claude-plugins-official context7@claude-plugins-official \
           ralph-loop@claude-plugins-official claude-code-setup@claude-plugins-official \
           claude-md-management@claude-plugins-official security-guidance@claude-plugins-official; do
    claude plugin install "$p" || echo "Non installato: $p (puoi farlo da /plugin)"
  done
else
  echo "Comando 'claude' non trovato: installa i plugin da /plugin dentro Claude Code (elenco in GUIDA.md)."
fi
echo "Fatto. Riavvia Claude Code / l'app desktop."
