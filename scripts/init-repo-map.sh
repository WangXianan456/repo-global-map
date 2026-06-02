#!/usr/bin/env bash
set -euo pipefail

output_root="artifacts/repo-map"
tag=""

while [ "$#" -gt 0 ]; do
  case "$1" in
    --output-root)
      output_root="${2:-}"
      shift 2
      ;;
    --tag)
      tag="${2:-}"
      shift 2
      ;;
    -h|--help)
      cat <<'USAGE'
Usage:
  bash scripts/init-repo-map.sh [--output-root artifacts/repo-map] [--tag demo-01]
USAGE
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      exit 1
      ;;
  esac
done

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
skill_root="$(cd "$script_dir/.." && pwd)"
template_dir="$skill_root/templates"

if [ ! -d "$template_dir" ]; then
  echo "Template directory not found: $template_dir" >&2
  exit 1
fi

if [ -z "$tag" ]; then
  tag="$(date +%Y%m%d-%H%M)"
fi

out_dir="$(pwd)/$output_root/$tag"
mkdir -p "$out_dir"

files=(
  "00-intake.md"
  "01-fact-sheet.md"
  "02-system-diagrams.md"
  "03-module-catalog.md"
  "04-dependency-risk-register.md"
  "05-change-entry-guide.md"
  "06-ops-release-observability.md"
  "07-roadmap-techdebt.md"
  "08-timebox-playbook.md"
  "09-quality-scorecard.md"
  "10-command-cookbook.md"
  "11-output-index-template.md"
  "12-reasoning-iteration.md"
)

for file in "${files[@]}"; do
  src="$template_dir/$file"
  if [ -f "$src" ]; then
    cp -f "$src" "$out_dir/$file"
  fi
done

echo "Initialized repo-map workspace: $out_dir"
