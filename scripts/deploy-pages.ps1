# Build Entheo.News (Jekyll) and deploy to Cloudflare Pages.
# Canonical URL: https://entheo.news.s2artslab.com
#
# Usage:
#   .\scripts\deploy-pages.ps1
#   .\scripts\deploy-pages.ps1 -SkipBuild
#
# Requires: Docker (for Jekyll build) or local Ruby+bundler, and wrangler login / CLOUDFLARE_API_TOKEN

param(
  [switch] $SkipBuild,
  [string] $ProjectName = "entheo-news",
  [string] $Branch = "main"
)

$ErrorActionPreference = "Stop"
$Root = Split-Path $PSScriptRoot -Parent
Set-Location $Root

function Build-JekyllSite {
  if (Get-Command ruby -ErrorAction SilentlyContinue) {
    Write-Host "[entheo-news] bundle install + jekyll build (local Ruby)" -ForegroundColor Cyan
    bundle install
    bundle exec jekyll build --destination _site
    return
  }

  if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
    throw "No Ruby and no Docker. Install Ruby+Bundler or Docker to build Jekyll."
  }

  Write-Host "[entheo-news] jekyll build via Docker" -ForegroundColor Cyan
  Push-Location $Root
  try {
    docker run --rm `
      -v "${PWD}:/srv/jekyll" `
      -w /srv/jekyll `
      jekyll/jekyll:4 `
      bash -lc "bundle install && bundle exec jekyll build --destination _site"
  } finally {
    Pop-Location
  }
}

if (-not $SkipBuild) {
  Build-JekyllSite
  $aiSrc = Join-Path $Root "ai"
  $aiDst = Join-Path $Root "_site\ai"
  if (Test-Path $aiSrc) {
    if (Test-Path $aiDst) { Remove-Item $aiDst -Recurse -Force }
    Copy-Item $aiSrc $aiDst -Recurse -Force
    Write-Host "[entheo-news] copied ai/ mirror into _site" -ForegroundColor Cyan
  }
}

$siteDir = Join-Path $Root "_site"
if (-not (Test-Path $siteDir)) {
  throw "Missing _site. Run without -SkipBuild or fix the Jekyll build."
}

$visibility = Join-Path (Resolve-Path (Join-Path $Root "..\..\shared\s2-visibility")) "Invoke-S2Visibility.ps1"
& $visibility -Surface entheoNews -WebDir $siteDir

$wrangler = if (Get-Command wrangler -ErrorAction SilentlyContinue) { "wrangler" } else { "npx" }
if ($wrangler -eq "npx") {
  npx --yes wrangler@3 pages deploy $siteDir `
    --project-name=$ProjectName `
    --branch=$Branch `
    --commit-dirty=true
} else {
  wrangler pages deploy $siteDir `
    --project-name=$ProjectName `
    --branch=$Branch `
    --commit-dirty=true
}

Write-Host ""
Write-Host "Deployed. Attach custom domain (once DNS points at *.pages.dev):" -ForegroundColor Green
Write-Host "  .\bootstrap\cloudflare\attach-all-pages-custom-domains.ps1 -Apps entheo-news"
Write-Host "Live target: https://entheo.news.s2artslab.com"
