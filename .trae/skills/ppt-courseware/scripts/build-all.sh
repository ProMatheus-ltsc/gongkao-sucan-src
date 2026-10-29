#!/usr/bin/env bash
# 一键构建全部课件到静态站点目录
# 依赖：install.sh、build.sh 与本文件同目录
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SITE_DIR="${SITE_DIR:-/workspace/资料分析速算}"

# 项目 → 站点子目录；新增课件在这里加一行
PROJECTS=(
  "/workspace/乘法与乘方-slidev|$SITE_DIR/multiplication"
  "/workspace/除法估算-slidev|$SITE_DIR/division"
  "/workspace/多项求差-slidev|$SITE_DIR/difference"
  "/workspace/多项连加-slidev|$SITE_DIR/summation"
)

for pair in "${PROJECTS[@]}"; do
  project="${pair%%|*}"
  target="${pair##*|}"
  "$SCRIPT_DIR/build.sh" "$project" "$target"
done

touch "$SITE_DIR/.nojekyll"
echo "全部构建完成：$SITE_DIR"
