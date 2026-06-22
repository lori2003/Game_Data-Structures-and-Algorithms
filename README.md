# 🧭 ALGO QUEST

Un'**avventura a enigmi** giocabile nel browser che insegna le **Strutture Dati & Algoritmi** partendo da zero. Per ogni "caso" prima **scegli la struttura dati giusta**, poi la **usi tu, passo per passo**: niente azione frenetica, solo ragionamento. Capisci *quando* serve una struttura e *come funziona dentro*.

▶️ **Gioca online:** https://lori2003.github.io/Game_Data-Structures-and-Algorithms/

*(disponibile dopo aver attivato GitHub Pages — vedi sotto)*

---

## 🎯 Come si gioca
Ogni caso ha tre momenti:
1. **Storia** — un problema reale di Byte City (la coda allo sportello, l'archivio ordinato, l'Annulla dell'editor…).
2. **Scelta** — decidi *quale* struttura dati risolve il problema, con spiegazione del perché.
3. **Operazione** — esegui tu le operazioni cliccando sulla struttura animata. Niente bersaglio "pre-illuminato": devi calcolare e ragionare davvero (es. l'hash lo calcoli tu, il minimo del sorting lo cerchi tu).

## 🧠 I 9 casi
1. **Il primo algoritmo** — cos'è un algoritmo (sequenza di passi precisi)
2. **Il magazzino numerato** — Array, accesso diretto O(1)
3. **Annulla, annulla, annulla!** — Stack, LIFO (pop dalla cima)
4. **Lo sportello** — Queue, FIFO (servi il primo)
5. **Il deposito bagagli** — Hash Table, `h(k)=k mod 7`, collisioni e chaining
6. **L'archivio ordinato** — Ricerca Binaria, dimezza al mezzo, O(log n)
7. **La classifica da sistemare** — Sorting, selection sort
8. **L'albero delle decisioni** — BST, regola sinistra/destra + visita in-order
9. **Blackout di sistema** — caso finale: riconosci e scegli la struttura giusta per ogni guasto

Extra: punti per caso, serie (streak), precisione, **Codex** dei concetti, classifica online.

---

## ☁️ Salvataggio dati su Supabase
Ogni caso risolto viene salvato automaticamente su Supabase (punteggio, serie, precisione) e mostrato nella **🏆 Classifica** in-game. La struttura della tabella è invariata: lo script di setup è lo stesso.

### Setup (una volta sola)
1. Apri il tuo progetto Supabase → **SQL Editor** → **New query**
2. Incolla il contenuto di [`supabase_setup.sql`](supabase_setup.sql) e premi **Run**
3. Fatto: la tabella `mission_completions` e le policy sono pronte.

> La **publishable key** nel codice è pensata per il client (browser) ed è sicura da pubblicare. L'accesso ai dati è protetto da Row Level Security: con quella chiave si può solo inserire e leggere la classifica.

---

## 🌐 Attivare GitHub Pages
1. Repo → **Settings** → **Pages**
2. *Source*: **Deploy from a branch** → Branch: **main** → cartella **/ (root)** → **Save**
3. Dopo ~1 minuto il gioco è online all'indirizzo qui sopra.

## 💻 Eseguire in locale
Apri semplicemente `index.html` con doppio clic. Funziona offline (il salvataggio cloud richiede connessione).

---

Costruito con HTML/CSS/JS puro, zero dipendenze di build. Solo la libreria Supabase è caricata via CDN.
