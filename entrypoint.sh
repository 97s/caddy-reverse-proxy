#!/bin/sh

set -e

echo "Starting Caddy with env:"
env | grep -E 'DOMAIN|PORT|FRONTEND|BACKEND'

exec caddy run --config /app/Caddyfile --adapter caddyfile
