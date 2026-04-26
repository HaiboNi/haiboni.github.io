# AI Changelog

A running log of changes made to this site by AI assistants, so the next AI can orient quickly without re-reading the entire repo.

Newest entries first. When you make a change in a session, append a dated section at the top with what changed and *why*.

---

## 2026-04-26 — Openings page, members flexibility, research/mission merge, visual cleanup

### Navigation and structure
- Added a new top-level page `openings/index.md` and nav entry in `_data/navlinks.yml`.
- Later moved `openings` to the end of the nav, after `news`, per user preference.
- Merged `mission` + `research` into a single `research` tab while keeping the internal page title **Research Mission**.
- Left `mission/index.md` as a lightweight pointer page to `/research` so old links do not break.

### Openings page
- Parsed two `.docx` recruitment documents from `documents-export-2026-4-25.zip`.
- Built a styled Chinese `openings` page with two listings:
  - `南京大学医学院数字孪生方向招聘`
  - `南京大学医学院附属鼓楼医院院士团队招聘博士后、科研助理`
- Removed the separate `合作导师` panels from both listings after review.
- Expanded the first listing to include `科研助理` and added the note that qualified applicants may compete for a Ph.D. student opportunity.
- Added a direct homepage link after the Chinese recruitment statement: `查看招聘信息 / View openings`.

### Publications and news
- Synced recent publications from Google Scholar / journal records into `publications/index.md`.
- Fixed literal `*` rendering in publication author lists by escaping Markdown where needed so co-first markers show on the live site.
- Restored `#` shared-senior / co-corresponding marking for the kidney fibrosis paper per user confirmation.
- Added two AI-authored news posts:
  - `_posts/2026-04-24-JACC-EP-Editorial.md`
  - `_posts/2025-06-01-PLOS-Academic-Editor.md`
- Added an authorship rule in `README.md` and `AI_readme.md`: use `author: AI` for AI-drafted posts.

### Homepage / visuals
- Added a new digital-heart hero image (`docs/labwebsite_photos/digital_heart_hero_v2.png`) and tested brighter variants.
- Reverted to the preferred original hero variant and adjusted only presentation.
- Increased hero height to `255px`.
- Improved title contrast for `Digital Heart`.
- Removed the background pill behind the hero title after review.
- Kept homepage structure stable after rolling back an over-aggressive refactor.

### About / members / shared styling
- Matched the `about_me` profile photo styling to the homepage by reusing the same classes.
- Moved profile-image corner radius / shadow styling into shared `static/css/custom.css`.
- Added rounded-corner styling for full-profile member images via `.member-photo`.
- Added hybrid support on the members page:
  - `display: full`
  - `display: compact`
  in `_members/*.md`, implemented in `members/index.html`, documented in `_members/_template.md`.

### Naming and wording
- Renamed visible site branding from **Digital Heart Research Group** to **Digital Heart Research Team** in user-facing and metadata locations.
- Changed the nav label from `research mission` back to `research` while keeping the page title unchanged.

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

## 2026-04-26

### People page update
- Added current team roster from `实验室成员信息(1).docx` as compact `_members/*.md` entries.
- Renamed the nav label from `members` to `people` while keeping the URL at `/members`.
- Reworked `members/index.html` so Haibo remains the featured full profile and the rest of the team appears in grouped compact sections.
- Grouped team members by seniority (`Postdoc`, `Ph.D. Students`, `Master's Students`, `Research Assistants`, `Visiting Student`, `Undergraduate Students`) and ordered people within each section by join date.
- Refined the People page copy to emphasize that the team is an integral part of the Engineering Medicine Research Group, supervised by Academician Ning Gu and coordinated by Prof. Haibo Ni.
