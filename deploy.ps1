Set-Location "C:\Users\ADLAB\Projects\Project 0001"
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  AD LAB // ОТПРАВКА НА GITHUB (adlab.su)" -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan

if (Test-Path "variant-modern.html") { Remove-Item "variant-modern.html" -Force }
if (Test-Path "variant-minimal.html") { Remove-Item "variant-minimal.html" -Force }

Write-Host "`n[1/3] Индексация изменений (git add)..." -ForegroundColor Yellow
git add -A

Write-Host "[2/3] Фиксация коммита (git commit)..." -ForegroundColor Yellow
git commit -m "Clean URLs: directory indexes, redirects, sitemap update, 404 page"

Write-Host "[3/3] Загрузка на GitHub (git push origin main)..." -ForegroundColor Yellow
git push origin main

Write-Host "`n========================================================" -ForegroundColor Green
Write-Host "  УСПЕШНО! ВСЕ СТРАНИЦЫ ЗАГРУЖЕНЫ НА GITHUB PAGES." -ForegroundColor Green
Write-Host "========================================================" -ForegroundColor Green
