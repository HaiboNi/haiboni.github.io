# AI Changelog

A running log of changes made to this site by AI assistants, so the next AI can orient quickly without re-reading the entire repo.

Newest entries first. When you make a change in a session, append a dated section at the top with what changed and *why*.

---

## 2026-04-24 — Fork-to-Ni-lab conversion, content updates, style refinement

Starting state: the repo was forked from the Wang-lab (SUSTech) Jekyll template and contained many placeholder and leftover-template strings. Haibo Ni moved to Nanjing University in Feb 2025 and needed the site reflecting his new group.

### Environment / build
- Installed Ruby 3.3.7 toolchain (Ubuntu 25.04 system Ruby) with per-user gems at `~/.gem` (user added `GEM_HOME` + PATH to `~/.bashrc`).
- **Deleted the old `Gemfile.lock`** and ran `bundle install` — the pinned `nokogiri 1.10.10` won't build on Ruby 3.3. If this recurs, just re-delete the lockfile.
- Build is clean; `./run.sh` serves at http://localhost:1234.

### Content added
- **News post** `_posts/2025-02-01-Joined-Nanjing-University.md` — Haibo joined the Medical School of Nanjing University faculty in Feb 2025.
- **News post** `_posts/2025-07-01-JPhysiol-Editorial-Board-Fellow.md` — Editorial Board Fellow at *The Journal of Physiology* for 2025–2027. Link to fellows page: https://physoc.onlinelibrary.wiley.com/hub/journal/14697793/editorial-board/editorial-board
- **Member page** `_members/HNi.md` — Haibo as PI, using `/docs/members/HNi_reduce.jpg`. Removed the old `_members/YWang.md` (template residue).
- **New page** `mission/index.md` — group mission (digital twins of the heart for arrhythmia research; welcomes trainees from diverse backgrounds). Figure reused from `/docs/research/Research_theme_reduce.png` as a hero with caption.
- **`/join/` page** rewritten from scratch (was full of `xxx@xx.com`, `SusTech`, `P1/P2/P3` placeholders). Bilingual: Chinese recruiting block first, then English sections for postdocs, Ph.D./master's, research assistants, visiting students.
- **`/contact/` page** rewritten — removed Ying Wang / SUSTech / HKUMed content; now shows Haibo's Nanjing contact with link to Join/Mission.
- **Nav** — added `mission` (between `about me` and `research`) and `members` (between `publications` and `news`) in `_data/navlinks.yml`. `join` and `contact` remain commented out (reachable via sidebar / body links).

### Rebranding (fork template leftovers)
- Replaced every user-visible "Ni Lab" / "Wang Lab" / "YWang Lab" / "T-Ni Lab" with the group's proper name. User's preferred phrasing for Haibo's personal bio: **"We work on digital hearts as part of the [Engineering Medicine Research Group](https://emg-nju.github.io/Homepage/)."** (see `memory/feedback_phrasing.md`).
- Files touched: `index.md`, `_layouts/home.html`, `members/index.html`, `_members/_template.md`, `_includes/header.html` (Atom feed title), `contact/index.md`, `join/index.md`, `about_me/index.md`, `_includes/sidebar.md`.
- Footer GitHub link changed from `ywang-lab/ywang-lab.github.io` → `haiboni/haiboni.github.io` + proper copyright line.
- **About-me** updated: affiliation now Associate Professor, Medical School of Nanjing University; education timeline extended back to 2025 Nanjing faculty role; typos fixed ("reviw" → "review", "Enginnering" → "Engineering").

### Sidebar overhaul
- The Twitter timeline widget (`_includes/twitter_sidebar.html`) was broken and created dead whitespace.
- Replaced its contents with **two cards** (Latest News feed + Join Us recruiting call-out), then renamed the include to `_includes/sidebar_cards.html` and updated the three layouts that include it (`members.html`, `about_me.html`, `postlist.html`).
- Later moved all inline styles into `.sidebar-card` / `.sidebar-card--accent` classes in `custom.css` for reusability.

### Style polish (`static/css/custom.css`)
- Set `body` font-family globally (was previously only on an unused `.body` class).
- Muted academic link color (`#2a5d84`, visited `#5a3e7a`, hover `#17405e` + underline) **scoped** to content links via `a:not(.nav-link):not(.navbar-brand):not(.read-more-trigger)` — so the navbar stays clean.
- Updated `.read-more-trigger` color to match the new palette (was bright `#0085bd`).
- Softer `h2` bottom border, tighter heading line-height, softer `hr`, simple `blockquote` bar.
- Subtle `.nav-link` hover/active state with a translucent background.
- Footer credit slightly lighter + smaller.

### Housekeeping
- Deleted `about_me/index copy.html.bk.html` (stale backup that was blocking builds after the include rename).
- Added `AI_readme.md` (orientation for future AIs), `README.md` rewritten (describes real tech stack + file map + nokogiri gotcha), both excluded from the build via `_config.yml`.
- Footer now ends with "Maintained with the help of AI." on every page.

### Known-but-untouched
- `_posts/2022-05-01-PostDoc-Normination.md` and `2023-02-01-Travel-Award.md` mention UC Davis — historical news, legitimate as-is.
- `_includes/header.html` has a commented-out SUSTech logo link; harmless.
- `_includes/alumni_sidebar.md` exists but isn't referenced by any layout we touched.
- No `docs/images/med-SUSTECH.png` on disk (the old contact page referenced it as a broken link; ref is gone now).

### Memory saved (for future AIs)
- `memory/feedback_phrasing.md` — user prefers modest/collaborative group self-description; avoid "lead the X group"; preferred line: "we work on digital hearts as part of the Engineering Medicine Research Group".
