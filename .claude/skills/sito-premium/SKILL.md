---
name: sito-premium
description: Linee guida per siti e pagine dall'aspetto professionale, non generico. Usala quando crei o rifai un sito, una landing page, una sezione del tema Shopify o un componente web, e l'utente vuole un risultato "premium", animato o "fatto da un designer".
---

# Sito premium

## Strumenti (gratuiti) e quando usarli
- **GSAP** (gsap.com, con ScrollTrigger e SplitText): animazioni a timeline e legate allo scroll. Anima solo `transform` e `opacity`.
- **Lenis** (github.com/darkroomengineering/lenis): scorrimento fluido. Solo su pagine vetrina/landing, non sul checkout.
- **React Bits** (reactbits.dev): oltre 100 componenti animati già pronti per progetti React/Next.js. Non si applica al tema Liquid: lì si ricrea l'effetto con GSAP o CSS.

## Regole
1. Prima la struttura e il contenuto, poi le animazioni. Un solo effetto forte per sezione.
2. Rispetta `prefers-reduced-motion`: senza animazioni la pagina deve restare completa.
3. Prestazioni: librerie caricate con `defer` solo nelle pagine che le usano; LCP e INP non devono peggiorare. Misura prima e dopo.
4. Nel tema Shopify: script in `assets/`, caricati da `layout/theme.liquid` o dalla singola sezione, mai dentro il checkout.
5. Design: palette del brand limitata, gerarchia tipografica netta, foto reali di prodotto, spaziature regolari. Applica la skill `anti-slop`.
6. Mobile prima: verifica a 375 px di larghezza senza scroll orizzontale.

## Verifica
Controlla la pagina su mobile e desktop (Playwright o anteprima del tema), con e senza movimento ridotto, prima di consegnare.
