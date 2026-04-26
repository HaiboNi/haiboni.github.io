# haiboni.github.io

Website for the **Digital Heart Research Team** (Haibo Ni) — part of the Engineering Medicine Research Group at the Medical School of Nanjing University.

## Recent changes

- `2026-04-26`: added `/openings`, merged mission content into `/research`, added hybrid full/compact members rendering, refined homepage visuals, and updated branding to `Digital Heart Research Team`.
- Detailed AI-maintained change log: `AI_changelog.md`

## Tech stack

- Jekyll (via the `github-pages` gem)
- Twitter Bootstrap 4.4.1
- Hosted on GitHub Pages

## Local development

```bash
# In this directory
./build.sh
./run.sh                    # serves on port 1234
```

Site will be served at <http://localhost:1234/>.

The repo vendors its working Jekyll bundle under `.bundle/vendor`, and the helper scripts pin Bundler and gem paths to repo-local folders. Future runs should not need `bundle install` unless dependencies change.

## File map

| Path | Purpose |
|---|---|
| `_config.yml` | Site config (collections, plugins, exclude list) |
| `_data/navlinks.yml` | Top navigation links |
| `_includes/header.html`, `footer.html` | Page chrome |
| `_includes/sidebar_cards.html` | Right-column cards (Latest News, Join Us) on members / about / news |
| `_layouts/` | Page templates (`home`, `default`, `post`, `postlist`, `members`, `about_me`, ...) |
| `index.md` | Home page |
| `about_me/index.md` | About the PI |
| `mission/index.md` | Legacy pointer page redirecting readers to `/research` |
| `research/index.md` | Combined research + mission page |
| `openings/index.md` | Openings / recruiting page |
| `publications/`, `_publications/` | Publications page + entries |
| `members/index.html`, `_members/` | Members page; one file per person (use `_members/_template.md`) |
| `news/`, `_posts/` | News listing; one file per post (`YYYY-MM-DD-slug.md`) |
| `join/index.md` | Recruiting page (bilingual) |
| `contact/index.md` | Contact page |
| `static/`, `docs/` | CSS, JS, images |
| `CNAME` | GitHub Pages custom domain |

## Adding a news post

Create `_posts/YYYY-MM-DD-slug.md`:

```markdown
---
title: Short headline
author: Haibo
layout: post
group: news
---

{: .postsfont}
**Month. Year.** Body of the post.

<!--more-->
```

Content above `<!--more-->` appears on the listing page.

Use `author: AI` for news posts drafted by the AI assistant. Use `author: Haibo` only for posts written by Haibo.

## Adding a member

Copy `_members/_template.md` to `_members/<LastName>.md` and fill in the frontmatter (name, position, email, image, ORCID, etc.).

For the People page:
- use `display: full` for featured profile cards and `display: compact` for list entries
- compact entries are grouped by role/seniority on `/members`
- people within the same role section are ordered by `startdate`
- `sort_order` is optional metadata for future custom ordering, but the current page logic uses role grouping plus `startdate`

## Publication author markers

For `publications/index.md`:

- `*` means co-first / equal contribution
- `#` means shared senior authorship

Only use these markers when they are explicitly stated in the journal version of record. Do not infer them from preprints, Google Scholar, CVs, or author order.

## Attribution

Originally derived from the template open-sourced by the [Fraser Lab](https://github.com/fraser-lab/fraser-lab.github.io). License included in this folder.
