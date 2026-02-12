# Entheo.News AI Archive

This directory contains **every Entheo.News blog post and page as raw markdown** for AI consumption.

## Purpose

- **RAG pipelines** — Ingest markdown directly for retrieval-augmented generation
- **AI training** — Use content for fine-tuning or context windows
- **Crawlers** — Programmatic access without HTML parsing
- **Citation** — Stable URLs for academic and journalistic reference

## Structure

```
ai/
├── index.md          # Human-readable manifest (this listing)
├── manifest.json     # Machine-readable manifest with URLs and metadata
├── README.md         # This file
├── posts/            # Blog articles as .md files
│   ├── a-quiet-legal-anomaly.md
│   ├── the-commercial-framing-problem.md
│   └── ...
└── pages/            # Foundational pages as .md files
    ├── doctrine.md
    ├── about.md
    └── start-here.md
```

## Access

- **Base URL:** https://s2artslab.github.io/entheo-news/ai/
- **Example post:** https://s2artslab.github.io/entheo-news/ai/posts/a-quiet-legal-anomaly.md
- **Manifest:** https://s2artslab.github.io/entheo-news/ai/manifest.json

## Sync

When new posts or pages are added to `_posts/` or `_pages/`, run:

```powershell
cd "APPs\Ninefold Studio\entheo_news_platform"
.\sync_ai_md.ps1
```

This copies content to `ai/` and updates the manifest.
