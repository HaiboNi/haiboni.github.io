#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

export GEM_HOME="$ROOT/.gem"
export GEM_PATH="$ROOT/.gem"
export PATH="$ROOT/.gem/bin:$ROOT/.bundle/vendor/ruby/3.3.0/bin:$PATH"
export BUNDLE_APP_CONFIG="$ROOT/.bundle"
export BUNDLE_USER_HOME="$ROOT/.bundle-home"
export BUNDLE_PATH="$ROOT/.bundle/vendor"

cd "$ROOT"
bundle exec jekyll build --trace
