#!/usr/bin/env bash
set -euo pipefail

: "${MCPO_API_KEY:?MCPO_API_KEY belum di-set}"

MCPO_HOST="${MCPO_HOST:-0.0.0.0}"
MCPO_PORT="${MCPO_PORT:-8000}"
REVULA_CMD="${REVULA_CMD:-revula}"

exec mcpo \
  --host "${MCPO_HOST}" \
  --port "${MCPO_PORT}" \
  --api-key "${MCPO_API_KEY}" \
  -- bash -lc "${REVULA_CMD}"
