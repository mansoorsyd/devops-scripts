# DevOps Scripts

Bash scripts for everyday automation.

## Scripts
- **backup.sh:** compresses a folder into a timestamped `.tar.gz` and deletes backups older than 7 days
- **health_check.sh:** checks whether a URL returns HTTP 200, and exits with an error if not

## How to use
    chmod +x backup.sh health_check.sh
    ./backup.sh /path/to/source /path/to/backups
    ./health_check.sh https://example.com

## What I learned
- Safe scripting with `set -euo pipefail`
- Handling arguments and exit codes
- Scheduling scripts with cron
