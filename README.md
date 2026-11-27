# video-voice-skills

Skills Claude Code pour la vidéo et la voix. La liste fait foi dans [`skill.json`](skill.json).

| Skill | Rôle | Installation |
|---|---|---|
| `face-swap` | Swap visage vidéo (Wan 2-2 / Kling) | `npx -y skills add runcomfy-com/skills --skill face-swap --agent claude-code` |
| `ai-avatar-video` | Face + voix en 1 passe (OmniHuman) | `npx skills add agentspace-so/runcomfy-agent-skills --skill ai-avatar-video -g` |
| `ai-voice-cloning` | Clonage de voix | `npx -y skills add inferen-sh/skills --skill ai-voice-cloning --agent claude-code` |
| `voice-clone-from-video` | Clone ta voix depuis un clip vidéo | `npx skills add itsryanarmani/skills --skill voice-clone-from-video -g` |
| `ffmpeg-skill` | Montage local, mux audio/vidéo | `npx ffmpeg-skill` |

## Installer

```bash
./install.sh             # tout
./install.sh face-swap   # une seule skill
```

`-g` installe la skill globalement (`~/.claude/skills`), sans `-g` elle va dans le projet courant (`.claude/skills`).

## À vérifier avant usage

- Ce sont des skills tierces : relisez leur `SKILL.md` après installation.
- Les skills RunComfy / inference.sh appellent des API distantes et demandent en général une clé API.
- Face swap et clonage de voix : uniquement avec le consentement des personnes dont le visage ou la voix sont utilisés.
