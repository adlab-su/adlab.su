@echo off
cd /d "%~dp0"
git add -A
git commit -m "Clean URLs: directory indexes, redirects, sitemap update, 404 page"
git push origin main
pause

