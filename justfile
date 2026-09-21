set shell := ["bash", "-uc"]

# mise shims resolve through nested shells (the Rakefile shells out to
# `bundle exec jekyll`); `mise exec` only rewrites the direct command
export PATH := env('HOME') / ".local/share/mise/shims:" + env('PATH')

# List available recipes
default:
    @just --list

# Install ruby toolchain and gems
setup:
    mise install
    bundle install

# Serve the site locally with live reload at http://127.0.0.1:4000
serve:
    bundle exec jekyll serve --livereload

# Build the site into _site/
build:
    bundle exec jekyll build

# Build the site as GitHub Pages does
build-prod:
    JEKYLL_ENV=production bundle exec jekyll build

# Remove generated site and caches
clean:
    bundle exec jekyll clean

# Lint ruby sources
lint:
    bundle exec rubocop

# Autocorrect ruby lint offenses
fmt:
    bundle exec rubocop --autocorrect

# Build and validate the generated HTML with html-proofer
test:
    bundle exec rake proof_sitedir

# Full quality gate
check: lint build test

# Serve via docker compose at http://0.0.0.0:4000
up:
    docker compose up -d

# Stop the docker compose stack
down:
    docker compose down

# Install bd git hooks (requires bd on PATH: https://github.com/steveyegge/beads)
hooks:
    @command -v bd >/dev/null || { echo "bd not found on PATH; install beads first"; exit 1; }
    bd hooks install

# Show work that is ready to pick up
ready:
    bd ready
