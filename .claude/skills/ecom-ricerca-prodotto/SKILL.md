---
name: ecom-ricerca-prodotto
description: Ricerca di prodotti vincenti con filtri rigidi. Usala quando l'utente cerca un nuovo prodotto o una nicchia da vendere (Shopify, Amazon o marketplace), vuole valutare un'idea di prodotto o chiede "cosa potrei vendere".
---

# Ricerca prodotto

Analizza una nicchia contro filtri rigidi e restituisci **solo** i prodotti che li superano tutti.

## Filtri predefiniti (modificabili dall'utente)
| Filtro | Soglia |
|---|---|
| Domanda | ≥ 1.000 ricerche/mese sulla keyword principale |
| Concorrenza | i primi 10 venditori hanno meno di 200 recensioni |
| Prezzo di vendita | ≥ 20 € / $ |
| Peso di spedizione | < 0,5 kg (1 lb) |
| Margine netto | ≥ 50% dopo costo prodotto, spedizione, commissioni e pubblicità stimata |

## Output
Tabella: Nicchia/prodotto · Ricerche/mese · Recensioni top 10 · Prezzo · Peso · Margine stimato · CPC stimato · Barriera d'ingresso (bassa/media/alta e perché) · Rischi (certificazioni, claim sanitari, resi, stagionalità).
Sotto la tabella: perché ogni prodotto supera il filtro, e quelli scartati con il filtro che non hanno superato.

## Regole
- Ogni numero indica la fonte (Google Keyword Planner, Search Console, Helium 10, Jungle Scout, ricerca su Amazon). Se è una stima, scrivi "stima".
- Se ci sono strumenti dati collegati (keyword research, Search Console, Ads), usali invece di stimare.
- Segnala i prodotti con vincoli normativi (cosmetici, integratori, elettronica, giocattoli: CE, FDA, CPSIA).
