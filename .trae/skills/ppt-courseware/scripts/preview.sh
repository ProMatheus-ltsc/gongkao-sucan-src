#!/usr/bin/env bash
# 本地预览静态站点
# 用法: preview.sh <站点目录> [端口]
set -euo pipefail

SITE="${1:?用法: preview.sh <站点目录> [端口]}"
PORT="${2:-4177}"

cd "$SITE"
echo "预览：http://localhost:$PORT/"
python3 -m http.server "$PORT"
