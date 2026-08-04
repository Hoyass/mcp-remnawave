#!/bin/sh
# Wrapper: читает токен из secrets, запускает MCP сервер
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SECRETS="${SECRETS_FILE:-/Users/hoyas/Workspace/inframax/projects/products/remnawave-service/.secrets/api-token.env}"
export REMNAWAVE_BASE_URL="${REMNAWAVE_BASE_URL:-https://panel.safetrafix.com}"
export REMNAWAVE_API_TOKEN="${REMNAWAVE_API_TOKEN:-$(grep REMNAWAVE_API_TOKEN "$SECRETS" | cut -d= -f2)}"
exec node "$SCRIPT_DIR/dist/index.js"
