# Linee guida di lavoro con Claude — EB Mini

Questo file viene letto automaticamente da Claude Code in ogni sessione su questo repository.
La stessa versione, adattata alle chat, si trova in `claude-setup/ISTRUZIONI-PROGETTO.md`
(da incollare nelle istruzioni dei Progetti su claude.ai).

## Lingua e tono
- Rispondi sempre in italiano, in modo diretto e concreto.
- Niente frasi di riempimento, niente riassunti di quello che hai appena detto.
- Niente testo "da AI": evita formule come "in un mondo in continua evoluzione", "viaggio straordinario", "sblocca il potenziale". Vedi la skill `anti-slop`.

## Prima di iniziare un lavoro importante
- Se la richiesta è un piano, un sito, una campagna, un lancio o un documento lungo e mancano informazioni decisive (cliente, obiettivo, budget, scadenza, criterio di successo), fai prima le domande con la skill `interrogami`. Una domanda alla volta, ognuna con la tua risposta consigliata.
- Per lavori piccoli o chiari, procedi senza fare domande.

## Consumo di token
- Rispondi alla lunghezza che serve, non di più (skill `risparmio-token`).
- Non rileggere file o documenti già letti nella stessa conversazione.
- Per ricerche ampie sul codice usa sub-agenti e tieni nel contesto solo le conclusioni.
- Nelle chat lunghe: quando un argomento è chiuso, proponi un riepilogo con la skill `memoria-progetto` e di proseguire in una nuova chat.

## Memoria e organizzazione
- Un Progetto claude.ai per area di lavoro (es. Sito Shopify, Ads, Email, Prodotti, Amministrazione).
- Le decisioni prese vanno nel file "Decisioni e contesto" della conoscenza del Progetto (formato nella skill `memoria-progetto`).
- Non chiedere di nuovo informazioni già presenti nella conoscenza del Progetto o in questo file.

## Siti e tema Shopify
- Questo repository è il tema Shopify: modifica solo i file necessari, rispetta la struttura `layout/ sections/ snippets/ templates/ assets/ config/ locales/`.
- Prestazioni prima di tutto (INP, LCP): script di terze parti caricati in modo differito, niente librerie pesanti senza motivo.
- Per un design curato segui la skill `sito-premium` (GSAP, Lenis, React Bits solo dove ha senso) ed evita i layout generici da AI.
- Dopo una modifica visibile, verifica il risultato (Playwright o anteprima del tema) prima di dichiararlo finito.

## E-commerce
Per prodotto, fornitori, brand e scheda, lancio, contenuti social, offerta e prezzi usa le skill `ecom-*` e `pricing`.
Ogni numero (volumi di ricerca, CPC, margini, costi) va indicato con la sua fonte; se è una stima, scrivilo.

## Sicurezza dei dati aziendali
- Non inviare dati di clienti, ordini o credenziali a servizi esterni non approvati.
- Non usare router di LLM gratuiti di terze parti per dati aziendali.
