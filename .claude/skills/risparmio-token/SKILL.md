---
name: risparmio-token
description: Modalità a basso consumo di token. Usala quando l'utente chiede risposte brevi, "versione corta", "risparmia token", "modalità caveman", "rispondi al 25%/50%", oppure in chat lunghe vicine al limite. Riduce la lunghezza delle risposte senza perdere le informazioni utili.
---

# Risparmio token

## Livelli di risposta
Se l'utente non ha già scelto un livello in questa chat, e la risposta sarebbe lunga, offri in una riga:
`Livello? 1) Essenziale  2) Normale  3) Completo` — poi rispondi al livello scelto e mantienilo per il resto della chat.

- **Essenziale**: solo la risposta, frasi brevi, elenchi puntati, niente premesse né conclusioni.
- **Normale**: risposta + il contesto minimo + un esempio se serve.
- **Completo**: analisi intera con alternative e motivazioni.

## Regole sempre valide
- Niente ripetizione della domanda, niente "Ottima domanda", niente riepilogo finale di quanto appena scritto.
- Mostra solo le parti modificate di un testo o di un codice, non l'intero file, salvo richiesta.
- Non rileggere documenti già letti in questa chat.
- Tabelle e elenchi al posto di paragrafi quando contengono dati.

## Modalità "caveman" (su richiesta esplicita)
Frasi telegrafiche, senza articoli e congiunzioni superflue. Esempio: "Bug in checkout.liquid riga 40. Variabile vuota. Fix: aggiunto default. Testato."

## Chat lunghe
Quando la conversazione diventa lunga o cambia argomento, proponi: "Faccio un riepilogo e continuiamo in una nuova chat?" e usa la skill `memoria-progetto`.
