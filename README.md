# RecallLab — Photo Retrieval Discovery Agent

Working research UI plus a production-ready Supabase schema for retrieval-process evidence. The UI contains a small verified starter corpus with public source links in `data/source-manifest.json`; it does not claim uncollected records.

The complete candidate-source inventory is maintained in `data/public-evidence-sources.md`. Candidate sources are kept separate from verified evidence counts.

Google Play collection runs use the exact audit fields in `data/google-play-collection-report-template.csv` and `.json`; the same fields are enforced by the `ingestion_runs` table in `supabase/schema.sql`.

## Run locally

```bash
npm install
npm run dev
```

## Production architecture

- Vinext/Next-compatible React frontend
- Supabase Postgres + pgvector (`supabase/schema.sql`)
- OpenAI Responses API for grounded synthesis and structured extraction
- `text-embedding-3-small` embeddings stored in pgvector
- Source connectors/import jobs write only records that pass retrieval relevance classification

## Hard ingestion rules

1. Screen for retrieval behavior before extraction or embedding.
2. Reject storage, backup, crash, pricing, editing, sync, deletion, privacy, sharing, and generic complaints without an observable retrieval process.
3. Deduplicate using source + source record ID and normalized text hashes in the ingestion worker.
4. Stop each public source at 5,000 accepted records; never pad a segment to meet a quota.
5. Store all accepted interview records. Preserve the raw text and source URL for traceability.
6. Compute counts from structured rows. The model may synthesize retrieved evidence but must not invent statistics.

## Answer contract

Every answer returns: synthesis, cohort size, filters, supporting evidence IDs, contradictory evidence IDs, source breakdown, limitations, and any computed metrics. Source filters are applied in SQL before semantic retrieval.

Apply `supabase/schema.sql`, copy `.env.example` to `.env.local`, and add server-only keys in the deployment environment. Never expose the service-role key to the browser.

## Connector requirements

- Reddit: public pages/API, with rate limiting and source URLs preserved.
- Apple App Store: public reviews feed/page, normalized by storefront.
- Google Play: public listing collector with locale/country recorded.
- Google Photos Community: public thread collector; exclude deletion, backup and account-recovery threads before extraction.
- YouTube: requires `YOUTUBE_API_KEY` and an approved list of video/channel IDs.
- Forums/social: requires a source allowlist; respect each platform's access rules.
- Interviews: CSV/JSON upload when research is complete, with participant identifiers pseudonymized.
