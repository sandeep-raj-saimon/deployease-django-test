#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"
. .venv/bin/activate
set -a
[ -f .env ] && source .env
set +a
python manage.py migrate
python manage.py runserver 0.0.0.0:8000
