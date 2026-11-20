# Guida: attivare le linee guida in Claude (chat, Progetti e Claude Code)

Questa guida deriva dall'analisi di 7 reel su Claude/Claude Code e del carosello "6 e-com legends → Claude agents".

## 1. Cosa dicevano i video e cosa è stato fatto

| Video | Strumenti mostrati | Cosa ho fatto |
|---|---|---|
| "5 plugin per Claude Code" (IT) | freellmapi, tester "come un hacker", memoria tra sessioni, agente ricerca notizie (X, Reddit, LinkedIn, Instagram), plugin ufficiale `claude-code-setup` | Attivati `claude-code-setup` e `security-guidance` (ufficiali). Memoria → skill `memoria-progetto`. **freellmapi escluso** (vedi §5) |
| "13 skill" (IT) | Grill Me, Caveman, Agent Browser, Find Skills, Anti-AI Slop, Web Design Guidelines, Canvas Design, SEO Audit, AI SEO, Video Lens, Video Use, Content Strategy, Pricing | Create in italiano: `interrogami`, `risparmio-token`, `anti-slop`, `pricing`. Browser → plugin `playwright`. SEO, AI SEO, Content Strategy, Canvas, Find Skills: **già attivi** nel tuo account |
| "5 plugin" (ES) | Superpowers, Frontend Design, Playwright, Ralph Loop, Context7 | Tutti attivati in `.claude/settings.json` |
| "3 tool gratis per siti" | GSAP, Lenis, React Bits | Skill `sito-premium` |
| "God mode" | Everything Claude Code (agenti, token-budget-advisor, continuous-learning) | Ripresi i concetti utili in `risparmio-token` e `memoria-progetto`. Non installato intero (troppo grande: centinaia di skill caricano contesto e consumano token) |
| "Il tool che risolve i token" | graphify (grafo della codebase) | Non installato: utile per codebase grandi, il tema attuale è piccolo. Installabile su richiesta |
| "Mods di Claude" | Mod per trovare clienti in un foglio Google, mod per risparmiare (compiti semplici al modello economico Haiku), dashboard KPI dentro Claude | Sub-agente `lavori-semplici` (modello Haiku) in `.claude/agents/`. Ricerca clienti → skill `lead-finder` già attiva. Dashboard KPI → skill `business-pulse` già attiva o una dashboard Artifact su richiesta. Le Mod dell'interfaccia si installano dall'app Claude sul tuo computer, non da qui |
| Carosello e-com (8 slide) | Ricerca prodotto, sourcing, brand + scheda, lancio, content machine, scaling | 6 skill `ecom-*` + `pricing`, adattate a Shopify e Amazon |

## 2. Chat e Progetti su claude.ai (da fare tu, 5 minuti)

Da qui non posso modificare le impostazioni del tuo account claude.ai: questi passaggi vanno fatti da te.

**a) Carica le skill** — Impostazioni → Funzionalità (Capabilities) → Skills → "Carica skill".
Carica uno alla volta i file `.zip` nella cartella `claude-setup/zip/`. Su GitHub: apri il file → "Download raw file".
Le skill funzionano poi in tutte le chat e in tutti i Progetti; Claude le usa da solo quando servono.

**b) Istruzioni dei Progetti** — In ogni Progetto → "Istruzioni del progetto": incolla il testo di `claude-setup/ISTRUZIONI-PROGETTO.md`.

**c) Memoria** — In ogni Progetto, aggiungi alla conoscenza un file vuoto chiamato `Decisioni e contesto`. A fine argomento chiedi "riepiloga" e incolla il blocco che Claude produce.
In Impostazioni attiva anche la memoria e la ricerca nelle chat precedenti, se disponibili nel tuo piano.

**d) Organizzazione consigliata** — Un Progetto per area: Sito Shopify · Ads e Analytics · Email (Klaviyo) · Prodotti e fornitori · Social · Amministrazione. Una chat per argomento; quando cambia l'argomento, nuova chat.

## 3. Claude Code (già configurato in questo repository)

- `CLAUDE.md` — linee guida lette in ogni sessione.
- `.claude/skills/` — le 12 skill.
- `.claude/settings.json` — plugin: superpowers, frontend-design, playwright, context7, ralph-loop, claude-code-setup, claude-md-management, security-guidance, skill-creator.

Alla prima apertura del repository Claude Code chiede di fidarsi della cartella e di installare i plugin: accetta.
Per averli in **tutti** i progetti sul tuo computer, nel terminale di Claude Code:

```
/plugin marketplace add obra/superpowers-marketplace
/plugin install superpowers@superpowers-marketplace
/plugin install frontend-design@claude-plugins-official
/plugin install playwright@claude-plugins-official
/plugin install context7@claude-plugins-official
/plugin install ralph-loop@claude-plugins-official
/plugin install claude-code-setup@claude-plugins-official
```

E per le skill personali in tutti i progetti, copia le cartelle di `.claude/skills/` in `~/.claude/skills/`.

## 4. Come usarle nella pratica

- "Interrogami su questo piano di lancio" → domande una alla volta prima di produrre.
- "Versione corta" / "modalità caveman" → risposte brevi, meno token.
- "Riepiloga per la memoria" → blocco da incollare in "Decisioni e contesto".
- "Trovami 10 prodotti nella nicchia X" / "scrivi la RFQ" / "scheda completa" / "piano di lancio 8 settimane con 3.000 €" / "trasforma questo video in una settimana di post" / "crea un bundle per alzare l'AOV" / "quanto lo faccio pagare?".
- Claude Code: `/ralph-loop` per far ripetere un compito finché è completo; `use context7` per documentazione aggiornata delle librerie.

## 5. Escluso di proposito

- **freellmapi** e router di LLM gratuiti: i prompt passano da fornitori terzi sconosciuti. Rischio per dati di clienti e ordini.
- **Strumenti di test "da hacker" di terze parti** su siti in produzione: usare solo su ambienti di test con autorizzazione. Al loro posto ci sono `security-guidance` e la skill `/security-review` già presente.
- **Everything Claude Code completo** e **graphify**: vedi tabella. Si possono aggiungere su richiesta.
