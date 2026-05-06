#!/usr/bin/env bash
set -euo pipefail

file="${1:-}"
port="${GO_GRIP_PORT:-6419}"
url="http://localhost:${port}/"

case "$file" in
  *.md|*.markdown)
    pkill -u "$USER" -x go-grip 2>/dev/null || true

    {
      echo "Preview: $url"
      echo "File: $file"
      date
    } > /tmp/hx-markdown-preview.log

    go-grip --port "$port" "$file" >>/tmp/hx-markdown-preview.log 2>&1 &

    sleep 0.5
    cmd.exe /C start "" "$url" >/dev/null 2>&1 || true
    ;;
  *)
    echo "Not a Markdown file: $file" > /tmp/hx-markdown-preview.log
    ;;
esac
