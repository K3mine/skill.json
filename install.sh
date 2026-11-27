#!/usr/bin/env bash
# Installe toutes les skills listées dans skill.json.
# Usage : ./install.sh            (toutes)
#         ./install.sh face-swap  (une seule, par nom)
set -euo pipefail
cd "$(dirname "$0")"
command -v node >/dev/null || { echo "Node.js requis"; exit 1; }

node -e '
const m = require("./skill.json");
const only = process.argv[1];
for (const s of m.skills) if (!only || s.name === only) console.log(s.name + "\t" + s.install);
' "${1:-}" | while IFS=$'\t' read -r name cmd; do
  echo "==> $name"
  echo "    $cmd"
  bash -c "$cmd" </dev/tty || echo "!! échec : $name"
done
