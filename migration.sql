-- Neue Spalten für Schritt-Tracking hinzufügen
ALTER TABLE public.bewerbungen
  ADD COLUMN IF NOT EXISTS abgeschlossen   BOOLEAN NOT NULL DEFAULT FALSE,
  ADD COLUMN IF NOT EXISTS letzter_schritt INTEGER NOT NULL DEFAULT 0;

-- Pflichtfelder nullable machen (für schrittweises Speichern)
ALTER TABLE public.bewerbungen
  ALTER COLUMN deutschkenntnisse DROP NOT NULL,
  ALTER COLUMN erfahrung         DROP NOT NULL,
  ALTER COLUMN eintrittstermin   DROP NOT NULL,
  ALTER COLUMN fuehrerschein     DROP NOT NULL,
  ALTER COLUMN eigenes_fahrzeug  DROP NOT NULL;
