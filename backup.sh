#!/usr/bin/env bash
set -euo pipefail

SRC="${1:?Usage: backup.sh <source_dir> <dest_dir>}"
DEST="${2:?Usage: backup.sh <source_dir> <dest_dir>}"
STAMP=$(date +%Y%m%d_%H%M%S)

mkdir -p "$DEST"
tar -czf "$DEST/backup_$STAMP.tar.gz" "$SRC"
find "$DEST" -name "backup_*.tar.gz" -mtime +7 -delete
echo "Backup complete: $DEST/backup_$STAMP.tar.gz"
