#!/bin/bash

# CONFIGURATION
REPO_DIR="/storage/emulated/0/Download/GHOST_LUFFY_WEBVIEW_APK_v1_0_FULL_PROJECT"

echo "📂 Changing to project directory..."
cd "$REPO_DIR" || { echo "❌ Directory not found!"; exit 1; }

echo "🔁 Resetting Git remote..."
git remote remove origin 2>/dev/null
git remote add origin "$REPO_URL"

echo "🧹 Cleaning workspace state..."
git checkout -B main
git pull --rebase origin main || { echo "❗ Merge conflict or fetch failed. Fix manually."; exit 1; }

echo "📦 Adding all files..."
git add .

echo "📝 Committing changes..."
git commit -m "🚀 Push fix sync - ghost-luffy-webview-tablet build" || echo "⚠️ No new changes to commit."

echo "📤 Pushing to GitHub..."
git push -u origin main && echo "✅ Push successful! CI should now trigger." || echo "❌ Push failed."
