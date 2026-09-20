# Public Evidence Source Registry

Updated: 20 September 2026

This is the master inventory of places where public evidence about photo retrieval may exist. Inclusion here means “candidate source,” not “evidence already collected.” A record enters the research corpus only when it describes a retrieval goal, remembered or forgotten clue, search/browsing action, refinement, failure, workaround, or outcome and retains a traceable public URL.

## 1. First-party app stores and product communities

| Source | Public entry point | Evidence type | Access / collection note | Registry status |
|---|---|---|---|---|
| Google Play — Google Photos | https://play.google.com/store/apps/details?id=com.google.android.apps.photos | Android reviews | Public listing; collect by locale and country, preserve review ID and date | Approved, pending collection |
| Apple App Store — Google Photos | https://apps.apple.com/app/google-photos-backup-edit/id962194608 | iOS reviews | Public storefront feeds/pages; preserve storefront and review ID | Active starter source |
| Google Photos Community | https://support.google.com/photos/threads | Support questions and replies | Public threads; high noise from backup/deletion/account recovery must be rejected | Active starter source |
| Apple Support Community — Photos | https://discussions.apple.com/ | Apple Photos questions and replies | Search only public Photos/iCloud Photos retrieval threads | Approved candidate |
| Microsoft Community — Photos / OneDrive | https://answers.microsoft.com/ | Windows Photos and OneDrive photo discussions | Public discussions; separate retrieval from sync and backup | Approved candidate |
| Amazon Photos support/community | https://www.amazonforum.com/ | Amazon Photos discussions | Public pages vary by region; verify accessibility before collection | Candidate, access review |
| Adobe Community — Lightroom | https://community.adobe.com/ | Lightroom search, keyword, people and library discussions | Public community; keep retrieval behavior, exclude editing-only threads | Approved candidate |
| Flickr Help Forum | https://www.flickr.com/help/forum/ | Search, tagging and browsing discussions | Public forum; useful comparative evidence for manual tags and result scanning | Approved candidate |
| Dropbox Community — Photos | https://www.dropboxforum.com/ | File/photo finding discussions | Public community; include only photo retrieval journeys | Candidate |

## 2. Public discussion communities

| Source | Public entry point | Evidence type | Access / collection note | Registry status |
|---|---|---|---|---|
| Reddit — r/googlephotos | https://www.reddit.com/r/googlephotos/ | Posts and comments | Primary public discussion source; use stable post/comment IDs | Active starter source |
| Reddit — r/ApplePhotos | https://www.reddit.com/r/ApplePhotos/ | Posts and comments | Comparative Apple Photos retrieval evidence | Approved candidate |
| Reddit — r/photography | https://www.reddit.com/r/photography/ | Photo-management discussions | Broad community; strict retrieval filtering required | Approved candidate |
| Reddit — r/Lightroom | https://www.reddit.com/r/Lightroom/ | Lightroom search and catalog discussions | Include only finding/retrieving assets | Approved candidate |
| Reddit — r/flickr | https://www.reddit.com/r/flickr/ | Flickr search and album discussions | Comparative retrieval and browsing behavior | Approved candidate |
| Photography Stack Exchange | https://photo.stackexchange.com/ | Public questions and answers | Use search/tag queries; preserve question and answer IDs | Approved candidate |
| Quora | https://www.quora.com/ | Public questions and answers | Public visibility and reuse restrictions vary; collect only through permitted access | Candidate, policy review |

## 3. Video and creator-platform comments

| Source | Public entry point | Evidence type | Access / collection note | Registry status |
|---|---|---|---|---|
| TikTok | https://www.tiktok.com/ | Comments on photo-search demonstrations | Public availability and API access vary; do not scrape behind login | Candidate, policy review |
| Instagram | https://www.instagram.com/ | Comments on product/tutorial posts | Use only public, permitted access; often login-gated | Candidate, policy review |
| Vimeo | https://vimeo.com/ | Comments on photo-management demos | Low expected volume; use only public comments | Optional candidate |

## 4. Public social posts

| Source | Public entry point | Evidence type | Access / collection note | Registry status |
|---|---|---|---|---|
| X | https://x.com/ | Public posts and replies | API/access restrictions apply; retain post IDs and conversation context | Candidate, credential/policy review |
| Threads | https://www.threads.net/ | Public posts and replies | Public visibility varies; use official/permitted access only | Candidate, policy review |
| Mastodon | https://joinmastodon.org/ | Public federated posts | Search only opted-in public indexes/instances; retain instance URL | Approved candidate with safeguards |
| Bluesky | https://bsky.app/ | Public posts and threads | Public AT Protocol data; retain URI/CID and thread context | Approved candidate |
| Public Facebook pages/groups | https://www.facebook.com/ | Posts and comments | Include only genuinely public pages accessible through permitted APIs; exclude private groups | Candidate, policy review |

## 5. Independent product-review and feedback sites

| Source | Public entry point | Evidence type | Access / collection note | Registry status |
|---|---|---|---|---|
| G2 | https://www.g2.com/ | Product reviews and discussions | Check product coverage and reuse terms; retrieval-specific passages only | Candidate, policy review |
| Capterra | https://www.capterra.com/ | Product reviews | More useful for professional photo managers than consumer galleries | Optional candidate |
| Trustpilot | https://www.trustpilot.com/ | Company/product reviews | High noise; include only explicit photo-finding journeys | Optional candidate |
| Product Hunt | https://www.producthunt.com/ | Launch comments for photo-search products | Useful for emerging tools and expectations; not a substitute for lived retrieval evidence | Approved secondary candidate |
| AlternativeTo | https://alternativeto.net/ | Product comments and recommendations | Useful for switching behavior and cross-app workarounds | Approved secondary candidate |

## 6. Open-source issue trackers and product feedback repositories

| Source | Public entry point | Evidence type | Access / collection note | Registry status |
|---|---|---|---|---|
| GitHub Issues | https://github.com/issues | Issues for open-source photo managers | Search projects such as Immich, PhotoPrism, digiKam and Nextcloud Photos; retain repository and issue IDs | Approved candidate |
| Immich GitHub | https://github.com/immich-app/immich/issues | Search, people and timeline issues | Strong comparative source for self-hosted libraries | Approved candidate |
| PhotoPrism GitHub | https://github.com/photoprism/photoprism/issues | Search/filter issues and feature requests | Separate implementation bugs from user retrieval journeys | Approved candidate |
| digiKam Bugzilla | https://bugs.kde.org/ | Tagging, face and search issues | Technical source; use when issue narrative contains user behavior | Approved candidate |
| Nextcloud Photos GitHub | https://github.com/nextcloud/photos/issues | Album, timeline and search issues | Public issue narratives and workarounds | Approved candidate |

## 7. Contextual research sources — not counted as user-feedback records

These sources can inform taxonomy, query design and interpretation, but must be stored separately from the public user-evidence corpus and must never inflate user counts.

| Source family | Entry point | Use |
|---|---|---|
| ACM Digital Library | https://dl.acm.org/ | HCI research on personal photo organization, search and autobiographical memory |
| Google Scholar | https://scholar.google.com/ | Discovery of relevant papers and theses |
| arXiv | https://arxiv.org/ | Open research on image retrieval, personal information management and multimodal search |
| CHI / CSCW proceedings | https://dl.acm.org/conference/chi | Behavioral frameworks and established findings |
| Public research datasets | Dataset-specific repository | Benchmarking only when licensing permits; never present synthetic/benchmark rows as spontaneous user feedback |

## 8. Interview and owned research inputs

| Source | Evidence type | Access note | Status |
|---|---|---|---|
| Research interviews | Transcripts, notes and coded responses | Upload after interviews; pseudonymize participants and preserve consent scope | Waiting for user upload |
| Survey free-text responses | Open-ended responses | Import only with research consent and provenance fields | Future candidate |
| Usability-test recordings/notes | Observed retrieval sessions | Prefer behavioral observations plus verbatim excerpts approved for research use | Future candidate |

## Required fields for every collected public record

- `source` and `source_record_id`
- `source_url` and publication date
- author handle only when necessary; otherwise hash or omit it
- raw text stored privately in the research database
- public excerpt used in the UI only when permitted
- collection timestamp, locale and country/storefront when applicable
- retrieval-relevance decision and exclusion reason
- duplicate/content hash
- structured extraction version and confidence

## Corpus boundary

Exclude records solely about storage, backup, deletion/recovery, crashes, pricing, editing, sync, sharing, privacy, account access or generic dissatisfaction. A product review is not evidence merely because it contains the word “search.” It must reveal at least one part of the retrieval process.
