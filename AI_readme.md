# AI_readme

Quick orientation for an AI assistant working on this repo.

## What this is

Personal / lab website for **Haibo Ni**, Medical School of Nanjing University.
Built with **Jekyll** (GitHub Pages flavor) and served at `haiboni.github.io`.
Source lives in this directory; the whole repo is `haiboni.github.io/` inside the parent `lab_website/` workspace.

## Tech stack

- **Jekyll** via the `github-pages` gem (`Gemfile`)
- **Ruby 3.3.7** (system Ruby on Ubuntu 25.04)
- Gems installed per-user under `~/.gem` (not system-wide)
- Markdown: `kramdown`; permalinks: `pretty`; paginated news (5/page)
- Google Analytics tag in `_config.yml`

## Local dev

```bash
# In this directory:
./build.sh            # local production build into _site
./run.sh              # local dev server on port 1234
# -> http://127.0.0.1:1234/
```

The repo now vendors the Ruby/Jekyll bundle under `.bundle/vendor`, and `run.sh` / `build.sh` set all required Bundler and gem paths locally. Future runs should not require `bundle install` unless the Gemfile changes.

Auto-regeneration is on by default — edits trigger rebuilds in ~0.1 s.

## Known gotchas

- **The original `Gemfile.lock` was pinned to 2020-era gems** (e.g. `nokogiri 1.10.10`) that will NOT compile on Ruby 3.3. The lockfile has been refreshed; if you see nokogiri compile errors again, delete `Gemfile.lock` and rerun `bundle install`.
- Some old posts reference missing images (e.g. `/docs/post_images/tbc.png`) — these log as 404s during serve but don't break the build.
- `_posts/_template.md` is the starter template for news entries. Do not delete.

## Content layout

| Path | Purpose |
|---|---|
| `_config.yml` | Site config, collections, plugins |
| `_posts/YYYY-MM-DD-*.md` | News entries (shown on `/news/`) |
| `_members/` | Current lab members (collection) |
| `_publications/` | Papers (collection) |
| `_about_me/`, `_drafts/`, `_data/navlinks.yml` | Misc content + nav |
| `_layouts/` | Page templates (`post.html`, `postlist.html`, `home.html`, ...) |
| `_includes/` | Partials (header, footer, sidebar, GA) |
| `_sass/` | Stylesheets |
| `static/`, `docs/` | Images and assets |
| `index.md`, `about_me/`, `research/`, `join/`, `contact/`, `publications/`, `members/`, `reviews/`, `news/` | Top-level pages |
| `CNAME` | GitHub Pages custom domain |

## Adding a news post

Create `_posts/YYYY-MM-DD-short-slug.md` with frontmatter:

```markdown
---
title: Short headline
author: Haibo
layout: post
group: news
---

{: .postsfont}
**Month. Year.** One-paragraph body.

<!--more-->
```

`<!--more-->` is the excerpt separator (configured in `_config.yml`) — content above it shows on the listing page.

Authorship rule for news posts:

- If the post is written by Haibo, use `author: Haibo`.
- If the post is drafted or written by the AI assistant, use `author: AI`.

## Publication author-marking standard

When editing `publications/index.md`, use author markers conservatively and only when they are explicitly supported by the journal version of record:

- `*` = co-first / equal-contribution author
- `#` = shared senior / jointly supervising author

Rules:

- Do not infer `*` or `#` from preprints, CVs, Scholar, lab pages, or author order alone.
- Add these markers only when the journal article itself states equal contribution or shared senior authorship.
- If only some authors carry the marker in the journal, mirror that exactly.
- If the journal article does not show these notes, omit the marker.
- If `[*Co-first author]` is appended after a citation, it should only be used when the journal explicitly confirms equal contribution.

## What NOT to do

- Don't commit `Gemfile.lock` regenerations without testing — GitHub Pages has its own pin.
- Don't rename collections in `_config.yml` without updating every `_<collection>/` folder and every layout that iterates them.
- Don't add new root-level directories expecting them to be served — Jekyll only serves what it knows about (pages with frontmatter, collections, or `static/`/`docs/` assets).
