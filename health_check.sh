#!/usr/bin/env bash
URL="${1:?Usage: health_check.sh <url>}"
CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$CODE" -eq 200 ]; then
  echo "$(date) OK: $URL"
else
  echo "$(date) FAIL ($CODE): $URL" >&2
  exit 1
fi
