# Zuper Discovery Kit — START HERE

**What this is:** a ~30–40 minute guided conversation with an AI that captures how your
business runs — your services, your workflow, what you track, what you send, what you'd need
to see working — and turns it into a build package. You email that package to Jeffrey, and
your working Zuper trial comes back **built from your answers**: your real stages, your real
fields, realistic example jobs you can click through.

## Run it (3 steps)
1. **Unzip this folder** anywhere on your computer.
2. **Open Claude in this folder** and paste this line:

   > **Read `.claude/skills/zuper-discovery/SKILL.md` in this folder and run the interview — let's start.**

   *(In Claude Code, just typing `/zuper-discovery` also works. The paste-line works everywhere.)*

**⚡ Terminal shortcut** (if you have Node + [Claude Code](https://claude.com/claude-code)) — one paste, straight into the interview:
```bash
npx -y degit ZuperHQ/zuper-discovery-kit zuper-discovery && cd zuper-discovery && claude "let's start the discovery interview"
```
3. **Talk.** Plain answers, a few questions at a time. Stop and resume anytime — it remembers.
   At the end it generates your package and gets it to Jeffrey — it can email it directly if
   your Claude is connected to your inbox, or hand you a ready-made email. A plain file works too.

## What you'll need
- Nothing technical. **No passwords, no API keys, no system access** — it will never ask.
- Someone who knows how jobs actually run (owner, ops manager, office lead).
- Optional but helpful: an example quote/invoice/contract you send today.

## What's in this folder (and why parts look empty)
| Folder | What it is |
|---|---|
| `.claude/skills/zuper-discovery/` | **The engine** — the interview script the AI runs |
| `01-answers/` | *Empty until you talk* — your conversation record lands here (resumable) |
| `02-package/` | *Empty until the end* — your generated package lands here, then gets zipped |
| `03-reference/EXAMPLE-PACKAGE/` | 👀 **A finished sample** (fictional roofing company) — open this to see exactly what your conversation produces |
| `03-reference/GLOSSARY.md` | Plain-language Zuper vocabulary, if you're curious |

## What happens after you send it
Jeffrey's build agent consumes your package directly: it provisions the trial, configures
your pipeline and fields, loads example jobs that mirror your real world, and you receive a
**"your environment is live"** email with logins and a clickable guide. Then we walk it
together.

*Questions mid-way? Jeffrey DeAnna · jeffrey.deanna@zuper.co · 862-703-8773*
