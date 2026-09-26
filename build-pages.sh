#!/bin/sh
# Собирает docs/index.html для GitHub Pages из index.html (артефакта Claude):
# добавляет doctype, кодировку и viewport, которые в артефакте даёт сам Claude.
set -e
cd "$(dirname "$0")"
mkdir -p docs
{
  printf '<!doctype html>\n<html lang="ru">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n</head>\n<body>\n'
  cat index.html
  printf '\n</body>\n</html>\n'
} > docs/index.html
echo "docs/index.html обновлён"
