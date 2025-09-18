#!/bin/bash

# Automated release script for husbanken-slidev-theme
# Usage: ./release.sh [patch|minor|major]

set -e

VERSION_TYPE="${1:-patch}"

if [[ ! "$VERSION_TYPE" =~ ^(patch|minor|major)$ ]]; then
  echo "Error: Invalid version type. Use 'patch', 'minor', or 'major'"
  echo "Usage: ./release.sh [patch|minor|major]"
  exit 1
fi

echo "🚀 Starting release process..."
echo "📦 Version type: $VERSION_TYPE"

# Ensure we're on main branch and up to date
echo "🔄 Checking git status..."
git fetch origin
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [ "$CURRENT_BRANCH" != "main" ]; then
  echo "❌ Error: You must be on the main branch to release"
  exit 1
fi

# Check if working directory is clean
if [[ -n $(git status --porcelain) ]]; then
  echo "❌ Error: Working directory is not clean. Please commit or stash your changes."
  exit 1
fi

# Pull latest changes
echo "⬇️  Pulling latest changes..."
git pull origin main

# Install dependencies and build
echo "📥 Installing dependencies..."
pnpm install

echo "🔨 Building package..."
pnpm build

# Bump version and create tag
echo "🏷️  Bumping version ($VERSION_TYPE)..."
npm version $VERSION_TYPE

NEW_VERSION=$(node -p "require('./package.json').version")
echo "✅ New version: v$NEW_VERSION"

# Push changes and tags
echo "⬆️  Pushing changes and tags..."
git push origin main --follow-tags

echo "🎉 Release v$NEW_VERSION completed!"
echo "📦 The publish workflow will automatically trigger and publish to NPM"
echo "🔗 Check the Actions tab: https://github.com/$(git config --get remote.origin.url | sed 's/.*github.com[:/]\([^/]*\/[^.]*\).*/\1/')/actions"