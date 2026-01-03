#!/bin/sh
set -eu

if [ -z "${DATABASE_URL:-}" ]; then
  echo "DATABASE_URL is not set"
  exit 1
fi

DB_ADDR="$(echo "$DATABASE_URL" | sed -E 's|^postgres(ql)?://||')"

echo "Running Nakama migrations..."
/nakama/nakama migrate up --database.address "$DB_ADDR"

echo "Starting Nakama..."
exec /nakama/nakama           --name nakama1           --database.address "$DB_ADDR"           --logger.level "${NAKAMA_LOG_LEVEL:-INFO}"           --socket.server_key "${NAKAMA_SERVER_KEY}"           --console.username "${NAKAMA_CONSOLE_USERNAME}"           --console.password "${NAKAMA_CONSOLE_PASSWORD}"
