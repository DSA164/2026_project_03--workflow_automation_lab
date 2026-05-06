CREATE TABLE IF NOT EXISTS listings (
  id SERIAL PRIMARY KEY,
  source TEXT NOT NULL,
  external_id TEXT,
  url TEXT,
  title TEXT,
  description TEXT,
  price_total NUMERIC,
  shipping_cost NUMERIC,
  estimated_count INTEGER,
  estimated_price_per_bd NUMERIC,
  language TEXT,
  condition TEXT,
  location TEXT,
  country TEXT,
  score INTEGER,
  decision TEXT,
  alert_sent BOOLEAN DEFAULT FALSE,
  raw JSONB,
  created_at TIMESTAMP DEFAULT NOW(),
  updated_at TIMESTAMP DEFAULT NOW(),
  UNIQUE(source, external_id)
);

CREATE TABLE IF NOT EXISTS alerts (
  id SERIAL PRIMARY KEY,
  listing_id INTEGER REFERENCES listings(id),
  channel TEXT,
  sent_at TIMESTAMP DEFAULT NOW(),
  message TEXT
);

CREATE TABLE IF NOT EXISTS runs (
  id SERIAL PRIMARY KEY,
  source TEXT,
  started_at TIMESTAMP DEFAULT NOW(),
  finished_at TIMESTAMP,
  status TEXT,
  items_found INTEGER,
  items_inserted INTEGER,
  items_updated INTEGER,
  errors_count INTEGER
);
