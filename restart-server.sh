#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PORT="${PORT:-8765}"

stop_port() {
  local port="$1"
  local attempt pids

  for attempt in 1 2 3 4 5; do
    pids="$(lsof -ti tcp:"$port" 2>/dev/null || true)"
    if [[ -z "$pids" ]]; then
      return 0
    fi

    if [[ "$attempt" -eq 1 ]]; then
      echo "Stopping server on port $port..."
    fi

    kill $pids 2>/dev/null || true
    sleep 0.5

    pids="$(lsof -ti tcp:"$port" 2>/dev/null || true)"
    if [[ -z "$pids" ]]; then
      return 0
    fi

    kill -9 $pids 2>/dev/null || true
    sleep 0.5
  done

  echo "Port $port is still in use. Stop the process manually and run this script again." >&2
  return 1
}

if command -v lsof >/dev/null 2>&1; then
  stop_port "$PORT"
else
  echo "lsof not found; starting server without stopping an existing process on port $PORT."
fi

cd "$ROOT"
echo "Serving $ROOT at http://localhost:$PORT/"
exec python3 -m http.server "$PORT"
