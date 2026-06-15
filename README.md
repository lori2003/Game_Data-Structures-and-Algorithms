# 🎮 ALGO STRIKE

Uno **sparatutto top-down** giocabile nel browser che insegna le **Strutture Dati & Algoritmi** partendo da zero. Ogni missione spiega un concetto e poi lo rende la meccanica di gioco: vedi la struttura dati **viva sullo schermo** mentre combatti.

▶️ **Gioca online:** https://lori2003.github.io/Game_Data-Structures-and-Algorithms/

*(disponibile dopo aver attivato GitHub Pages — vedi sotto)*

---

## 🕹️ Comandi
| Tasto | Azione |
|-------|--------|
| `W A S D` | Muoviti |
| `Mouse` | Mira |
| `Click` (tieni premuto) | Spara |
| `Spazio` | Scatto / dash (con frame di invulnerabilità) |

## 🧠 Le 9 missioni
1. **Boot Camp** — cos'è un algoritmo + controlli
2. **Array** — accesso diretto O(1)
3. **Stack** — LIFO (pop dalla cima)
4. **Queue** — FIFO (servi il primo)
5. **Hash Table** — `h(k) = k mod 7`, O(1) medio
6. **Ricerca Binaria** — spara al mezzo, O(log n)
7. **Sorting** — selection sort, ordine crescente
8. **BST** — albero binario di ricerca, visita in-order
9. **Boss: Kernel Panic** — applica tutto sotto pressione

Extra: combo multiplier, XP/level-up, **Codex** dei concetti, classifica online.

---

## ☁️ Salvataggio dati su Supabase
Ogni completamento di missione viene salvato automaticamente su Supabase (punteggio, combo, precisione, XP) e mostrato nella **🏆 Classifica** in-game.

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

Costruito con HTML5 Canvas puro, zero dipendenze di build. Solo la libreria Supabase è caricata via CDN.
