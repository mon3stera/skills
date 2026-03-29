#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_dir="${repo_root}/skills"
target_dir="${CODEX_HOME:-$HOME/.codex}/skills"

mkdir -p "${target_dir}"

shopt -s nullglob

for skill_dir in "${source_dir}"/*; do
  if [[ ! -d "${skill_dir}" ]]; then
    continue
  fi

  skill_name="$(basename "${skill_dir}")"
  destination="${target_dir}/${skill_name}"

  if command -v rsync >/dev/null 2>&1; then
    rsync -av --delete "${skill_dir}/" "${destination}/"
    continue
  fi

  rm -rf "${destination}"
  mkdir -p "${destination}"
  cp -a "${skill_dir}/." "${destination}/"
done
