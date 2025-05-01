# 📦 Project Setups

Questa repo contiene due setup base per iniziare nuovi progetti velocemente.


## 📁 Contenuto

### ▶️ `vanillaSetup/`
Setup base con:
- HTML, CSS e JavaScript puro
- ESLint e Prettier già configurati

### ⚛️ `reactSetup/`
Setup React moderno con:
- React + ReactDOM
- Vite (dev server e build tool)
- ESLint (con plugin React e Prettier)
- Prettier per formattazione automatica
- Struttura modulare (`src/components`, `src/pages`, `src/assets`)

--------------------------------------------------------------------

# How to:

Il metodo migliore è scaricare il .bat e seguire le istruzioni:
vi chiede prima quale setup scaricare, poi apre powershell per selezionare
la destinazione ( o creare una nuova cartella ad hoc).
Se non trustato il .bat allora scaricate il .rar che vi interessa oppure
seguite le istruzioni sotto se sapete che roba sono.

## ▶️ Vanilla JS Setup

```bash
git clone --filter=blob:none --no-checkout https://github.com/bubbosvilup/Setups.git
cd Setups
git sparse-checkout init --cone
git sparse-checkout set vanillaSetup
git checkout
// then just
npm install
```

## ⚛️ React + Vite Setup

```bash
git clone --filter=blob:none --no-checkout https://github.com/bubbosvilup/Setups.git
cd Setups
git sparse-checkout init --cone
git sparse-checkout set reactSetup
git checkout
// then just
npm install
npm run dev
```

Clona la repo una volta, copia la cartella che ti serve, e rinominala per iniziare un nuovo progetto.

-> Bubbo