set shell := ["bash", "-uc"]

# mise exec keeps recipes working whether or not mise is shell-activated
bundle := "mise exec -- bundle"

# List available recipes
default:
    @just --list

# Install ruby toolchain and gems
setup:
    mise install
    {{ bundle }} install

# Serve the site locally with live reload at http://127.0.0.1:4000
serve:
    {{ bundle }} exec jekyll serve --livereload

# Build the site into _site/
build:
    {{ bundle }} exec jekyll build

# Build the site as GitHub Pages does
build-prod:
    JEKYLL_ENV=production {{ bundle }} exec jekyll build

# Remove generated site and caches
clean:
    {{ bundle }} exec jekyll clean

# Lint ruby sources
lint:
    {{ bundle }} exec rubocop

# Autocorrect ruby lint offenses
fmt:
    {{ bundle }} exec rubocop --autocorrect

# Build and validate the generated HTML with html-proofer
test:
    {{ bundle }} exec rake proof_sitedir

# Full quality gate
check: lint build test

# Serve via docker compose at http://0.0.0.0:4000
up:
    docker compose up -d

# Stop the docker compose stack
down:
    docker compose down

# Install git hooks (lefthook first, then bd appends its sync block)
hooks:
    lefthook install
    bd hooks install

# Show work that is ready to pick up
ready:
    bd ready
