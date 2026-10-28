#!/usr/bin/env bash
# 构建单个 Slidev 项目，并把 dist 同步到站点目标目录
# 用法: build.sh <slidev项目目录> <站点目标目录>
set -euo pipefail

PROJECT="${1:?用法: build.sh <slidev项目目录> <站点目标目录>}"
TARGET="${2:?用法: build.sh <slidev项目目录> <站点目标目录>}"

if [[ ! -f "$PROJECT/slides.md" ]]; then
  echo "错误：$PROJECT 不是 Slidev 项目（缺少 slides.md）" >&2
  exit 1
fi

if [[ "$TARGET" == "/" || "$TARGET" != /workspace/* ]]; then
  echo "错误：目标目录必须是 /workspace 下的子目录，收到：$TARGET" >&2
  exit 1
fi

if [[ ! -x "$PROJECT/node_modules/.bin/slidev" ]]; then
  "$(dirname "$0")/install.sh" "$PROJECT"
fi

cd "$PROJECT"
echo "构建：$PROJECT"
npx slidev build --base ./

mkdir -p "$TARGET"
find "$TARGET" -mindepth 1 -maxdepth 1 -exec rm -rf {} +
cp -R dist/. "$TARGET"/

echo "完成：$TARGET"
