# Neufeld Dachbau – Bewerbungs-Funnel
## Einrichtung in 4 Schritten (~15 Minuten)

---

## Schritt 1 – Supabase-Konto erstellen (kostenlos)

1. Gehe zu **https://supabase.com** und klicke auf „Start your project"
2. Registriere dich mit E-Mail oder GitHub
3. Klicke auf **„New Project"**
4. Gib einen Namen ein (z.B. `neufeld-dachbau`) und ein starkes Passwort
5. Wähle eine Region: **Frankfurt (eu-central-1)**
6. Klicke auf **„Create new project"** — dauert ca. 1 Minute

---

## Schritt 2 – Datenbank einrichten

1. Im Supabase-Dashboard links auf **„SQL Editor"** klicken
2. Klicke auf **„New query"**
3. Den gesamten Inhalt der Datei `supabase-setup.sql` hineinkopieren
4. Auf **„Run"** klicken (grüner Button)
5. Es erscheint: `Success. No rows returned` → fertig!

---

## Schritt 3 – Zugangsdaten eintragen

### Zugangsdaten finden:
1. Im Supabase-Dashboard links auf **„Settings"** (Zahnrad)
2. Dann auf **„API"**
3. Du siehst:
   - **Project URL** → sieht aus wie `https://abcxyzabc.supabase.co`
   - **anon public** Key → ein langer Text

### In beide HTML-Dateien eintragen:
Öffne `index.html` und `admin.html` mit einem Texteditor (z.B. Notepad).
Ersetze diese zwei Zeilen in **beiden Dateien**:

```
const SUPABASE_URL      = 'DEINE_SUPABASE_URL';
const SUPABASE_ANON_KEY = 'DEIN_SUPABASE_ANON_KEY';
```

Mit deinen echten Werten, z.B.:
```
const SUPABASE_URL      = 'https://abcxyzabc.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...';
```

---

## Schritt 4 – Admin-Passwort erstellen

1. Im Supabase-Dashboard links auf **„Authentication"**
2. Dann auf **„Users"**
3. Klicke auf **„Add user"** → **„Create new user"**
4. Trage deine E-Mail ein (z.B. `info@neufeld-dachbau.de`) und ein sicheres Passwort
5. Klicke auf **„Create user"**

Mit diesen Daten loggst du dich im Admin-Dashboard ein.

---

## Schritt 5 – Website veröffentlichen (kostenlos mit Vercel)

1. Gehe zu **https://vercel.com** und erstelle ein Konto
2. Klicke auf **„Add New Project"** → **„Browse"**
3. Lade den Ordner `neufeld-dachbau-funnel` hoch
4. Klicke auf **„Deploy"**
5. Du bekommst eine kostenlose URL wie `neufeld-dachbau.vercel.app`

### Alternative: Netlify
1. Gehe zu **https://netlify.com**
2. Den Ordner per Drag & Drop ins Dashboard ziehen
3. Fertig — du bekommst sofort eine URL

---

## Verwendung

| Datei | Zweck |
|-------|-------|
| `index.html` | Landing Page — dieser Link kommt in die Instagram-Werbung |
| `admin.html` | Admin-Dashboard — nur für dich, zum Bewerber verwalten |

### Instagram-Werbung einrichten:
- **Link in der Werbung** → deine Vercel/Netlify-URL (z.B. `https://neufeld-dachbau.vercel.app`)
- **Admin-Dashboard** → `https://neufeld-dachbau.vercel.app/admin.html`

### Status-Verwaltung im Admin:
| Status | Bedeutung |
|--------|-----------|
| **Neu** | Frische Bewerbung, noch nicht angeschaut |
| **In Prüfung** | Du hast die Bewerbung geprüft |
| **Eingeladen** | Bewerber wurde zum Gespräch eingeladen |
| **Abgelehnt** | Bewerbung wurde abgelehnt |

---

## Kosten

| Service | Preis |
|---------|-------|
| Supabase (Datenbank) | Kostenlos bis 50.000 Einträge |
| Vercel / Netlify (Hosting) | Kostenlos |
| **Gesamt** | **0 € / Monat** |
