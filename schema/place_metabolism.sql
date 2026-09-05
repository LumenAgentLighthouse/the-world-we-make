-- The World We Make: local material/ecological metabolism
-- Preserve physical flows separately from monetary values and national aggregates.

CREATE TABLE place_material_flows (
  flow_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  material_or_flow_type TEXT NOT NULL,
  direction TEXT NOT NULL,
  origin_place_id TEXT REFERENCES places(place_id),
  destination_place_id TEXT REFERENCES places(place_id),
  quantity_numeric REAL,
  quantity_unit TEXT,
  monetary_value REAL,
  monetary_unit TEXT,
  processing_stage TEXT,
  transport_mode TEXT,
  waste_or_reuse_status TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  caveat TEXT,
  notes TEXT
);

CREATE TABLE place_ecological_metabolism (
  metabolism_observation_id TEXT PRIMARY KEY,
  place_id TEXT REFERENCES places(place_id),
  time_id TEXT REFERENCES time_periods(time_id),
  flow_or_stock_type TEXT NOT NULL,
  value_numeric REAL,
  unit TEXT,
  boundary_definition TEXT,
  source_id TEXT REFERENCES sources(source_id),
  confidence TEXT,
  caveat TEXT,
  notes TEXT
);

-- Examples: food, water, electricity, fuel, raw materials, manufactured goods,
-- building materials, waste, recycled material, emissions, biomass and ecological
-- extraction. Distinguish extraction, import, local transformation, local use,
-- export, disposal and recovery.
