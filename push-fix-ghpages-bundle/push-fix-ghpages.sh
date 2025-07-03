#!/bin/bash

echo "🚀 Deploying GHOST LUFFY APK GitHub Pages branch..."

# Clean and switch to orphan gh-pages branch
git checkout --orphan gh-pages
git rm -rf .

# Inject HTML UI
mv GHOST_LUFFY_WEBVIEW_APK_v1_0_FULL_PROJECT/gh-pages/index.html .

# Git commit and force push
git add index.html
git commit -m "🌐 Add GitHub Pages APK download UI"
git push -u origin gh-pages --force

echo "✅ GitHub Pages live at: https://adzry.github.io/ghost-luffy-webview-tablet/"
