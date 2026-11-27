# video-voice-skills

Skills Claude Code pour la vidéo et la voix. La liste fait foi dans [`skill.json`](skill.json).

Toutes les skills s'installent **globalement** dans `~/.claude/skills`, donc disponibles dans tous vos projets.

| Skill | Rôle | Installation |
|---|---|---|
| `face-swap` | Swap visage vidéo (Wan 2-2 / Kling) | `npx -y skills add runcomfy-com/skills --skill face-swap --agent claude-code -g` |
| `ai-avatar-video` | Face + voix en 1 passe (OmniHuman) | `npx -y skills add agentspace-so/runcomfy-agent-skills --skill ai-avatar-video --agent claude-code -g` |
| `lipsync` | Lip-sync d'un visage sur une piste audio (OmniHuman / Sync Labs) | `npx -y skills add agentspace-so/runcomfy-agent-skills --skill lipsync --agent claude-code -g` |
| `runcomfy-cli` | CLI `runcomfy` : installation et authentification, base des skills RunComfy | `npx -y skills add agentspace-so/runcomfy-agent-skills --skill runcomfy-cli --agent claude-code -g` |
| `ai-voice-cloning` | Clonage de voix | `npx -y skills add inferen-sh/skills --skill ai-voice-cloning --agent claude-code -g` |
| `voice-clone-from-video` | Clone ta voix depuis un clip vidéo | `npx -y skills add itsryanarmani/skills --skill voice-clone-from-video --agent claude-code -g` |
| `ffmpeg-skill` | Montage local, mux audio/vidéo | `npx -y ffmpeg-skill --claude` |

`ffmpeg-skill` a son propre installeur, qui refuse l'option `-g`. Son option `--claude` (comportement par défaut) installe déjà dans `~/.claude/skills/ffmpeg-skill`.

## Installer

```bash
./install.sh             # tout
./install.sh face-swap   # une seule skill
```

## À vérifier avant usage

- Ce sont des skills tierces : relisez leur `SKILL.md` après installation.
- Les skills RunComfy (`face-swap`, `ai-avatar-video`, `lipsync`) passent par le CLI `runcomfy` : suivez la skill `runcomfy-cli` pour l'installer et vous authentifier (compte et clé RunComfy).
- `ai-voice-cloning` (inference.sh) appelle aussi une API distante et demande en général une clé.
- `ffmpeg-skill` n'installe pas ffmpeg lui-même : installez-le à part, ou lancez `npx ffmpeg-skill setup`. Vérifiez ensuite avec `npx ffmpeg-skill doctor`.
- Face swap et clonage de voix : uniquement avec le consentement des personnes dont le visage ou la voix sont utilisés.
