create extension if not exists vector;
create table if not exists evidence_records (
  id uuid primary key default gen_random_uuid(), source text not null check (source in ('google_play','app_store','reddit','google_support','youtube','forum_social','interview')),
  source_record_id text, source_url text, published_at timestamptz, raw_text text not null,
  relevance_status text not null check (relevance_status in ('relevant','irrelevant','unclear')),
  relevance_reason text, asset_type text, retrieval_goal text,
  remembered_clues jsonb not null default '[]', forgotten_clues jsonb not null default '[]',
  first_action text, retrieval_anchor text, failure_stage text, failure_description text,
  first_attempt_outcome text, did_refine text, refinement_actions jsonb not null default '[]', refinement_count integer,
  did_results_trigger_new_memory text, newly_remembered_clues jsonb not null default '[]', new_memory_categories jsonb not null default '[]',
  manual_scrolling_used text, similar_result_problem text, recognition_overload text, recognition_description text,
  workaround_used text, workaround_type text, workaround_description text, final_outcome text, retrieval_time text,
  problem_clusters jsonb not null default '[]', hypothesis_tags jsonb not null default '[]', contradiction_tags jsonb not null default '[]',
  evidence_strength text check (evidence_strength in ('strong','moderate','weak')), new_pattern_detected boolean default false,
  extraction_version text not null default 'v1', extraction_confidence numeric, embedding vector(1536), created_at timestamptz default now(),
  unique(source, source_record_id)
);
create index if not exists evidence_source_idx on evidence_records(source);
create index if not exists evidence_relevance_idx on evidence_records(relevance_status);
create index if not exists evidence_clusters_idx on evidence_records using gin(problem_clusters);
create index if not exists evidence_embedding_idx on evidence_records using hnsw (embedding vector_cosine_ops);
create table if not exists hypotheses (id text primary key, statement text not null, description text, created_at timestamptz default now());
create table if not exists ingestion_runs (
  id uuid primary key default gen_random_uuid(),
  source text not null,
  status text not null check (status in ('queued','collecting','screening','completed','failed')),
  package_id text,
  country text,
  language text,
  sort_order text,
  collection_started_at timestamptz,
  collection_completed_at timestamptz,
  raw_reviews_collected integer not null default 0 check (raw_reviews_collected >= 0),
  duplicates_removed integer not null default 0 check (duplicates_removed >= 0),
  irrelevant_reviews_rejected integer not null default 0 check (irrelevant_reviews_rejected >= 0),
  unclear_reviews integer not null default 0 check (unclear_reviews >= 0),
  retrieval_reviews_accepted integer not null default 0 check (retrieval_reviews_accepted >= 0),
  continuation_token_exhausted boolean not null default false,
  cap integer not null default 5000 check (cap between 1 and 5000),
  error_message text,
  created_at timestamptz not null default now(),
  check (retrieval_reviews_accepted + irrelevant_reviews_rejected + unclear_reviews <= raw_reviews_collected),
  check (duplicates_removed <= raw_reviews_collected)
);
create index if not exists ingestion_runs_source_idx on ingestion_runs(source, package_id);
create index if not exists ingestion_runs_segment_idx on ingestion_runs(country, language, sort_order);
create or replace function match_evidence(query_embedding vector(1536), match_count int default 20, source_filter text[] default null)
returns table(id uuid, source text, raw_text text, similarity float) language sql stable as $$
  select e.id,e.source,e.raw_text,1-(e.embedding <=> query_embedding) similarity from evidence_records e
  where e.relevance_status='relevant' and (source_filter is null or e.source=any(source_filter))
  order by e.embedding <=> query_embedding limit least(match_count,50);
$$;
