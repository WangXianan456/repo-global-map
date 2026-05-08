param(
  [string]$OutputRoot = "artifacts/repo-map",
  [string]$Tag = ""
)

$ErrorActionPreference = "Stop"

$skillRoot = Split-Path -Parent $MyInvocation.MyCommand.Path | Split-Path -Parent
$templateDir = Join-Path $skillRoot "templates"

if (-not (Test-Path $templateDir)) {
  throw "Template directory not found: $templateDir"
}

if ([string]::IsNullOrWhiteSpace($Tag)) {
  $Tag = Get-Date -Format "yyyyMMdd-HHmm"
}

$outDir = Join-Path (Resolve-Path ".").Path (Join-Path $OutputRoot $Tag)
New-Item -ItemType Directory -Force $outDir | Out-Null

$files = @(
  "00-intake.md",
  "01-fact-sheet.md",
  "02-system-diagrams.md",
  "03-module-catalog.md",
  "04-dependency-risk-register.md",
  "05-change-entry-guide.md",
  "06-ops-release-observability.md",
  "07-roadmap-techdebt.md",
  "08-timebox-playbook.md",
  "09-quality-scorecard.md",
  "10-command-cookbook.md",
  "11-output-index-template.md",
  "12-reasoning-iteration.md"
)

foreach ($file in $files) {
  $src = Join-Path $templateDir $file
  $dst = Join-Path $outDir $file
  if (Test-Path $src) {
    Copy-Item -LiteralPath $src -Destination $dst -Force
  }
}

"Initialized repo-map workspace: $outDir"
