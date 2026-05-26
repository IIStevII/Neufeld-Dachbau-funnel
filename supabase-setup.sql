-- ════════════════════════════════════════════════════
--  Neufeld Dachbau – Supabase Datenbank Setup
--  Dieses Script einmal im Supabase SQL-Editor ausführen
-- ════════════════════════════════════════════════════

-- Tabelle erstellen
CREATE TABLE public.bewerbungen (
    id               UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    created_at       TIMESTAMPTZ NOT NULL    DEFAULT NOW(),
    vorname          TEXT        NOT NULL,
    nachname         TEXT        NOT NULL,
    email            TEXT        NOT NULL,
    telefon          TEXT        NOT NULL,
    deutschkenntnisse TEXT       NOT NULL,
    erfahrung        TEXT        NOT NULL,
    eintrittstermin  DATE        NOT NULL,
    fuehrerschein    BOOLEAN     NOT NULL DEFAULT FALSE,
    eigenes_fahrzeug BOOLEAN     NOT NULL DEFAULT FALSE,
    nachricht        TEXT,
    status           TEXT        NOT NULL DEFAULT 'neu'
                     CHECK (status IN ('neu','in_pruefung','eingeladen','abgelehnt'))
);

-- Sicherheit aktivieren (Row Level Security)
ALTER TABLE public.bewerbungen ENABLE ROW LEVEL SECURITY;

-- Jeder darf eine Bewerbung einreichen (für die Landing Page)
CREATE POLICY "bewerbung_einreichen"
    ON public.bewerbungen
    FOR INSERT
    TO anon
    WITH CHECK (true);

-- Nur eingeloggte Admins dürfen alles sehen und bearbeiten
CREATE POLICY "admin_vollzugriff"
    ON public.bewerbungen
    FOR ALL
    TO authenticated
    USING (true)
    WITH CHECK (true);

-- Realtime für das Admin-Dashboard aktivieren
ALTER PUBLICATION supabase_realtime ADD TABLE public.bewerbungen;
