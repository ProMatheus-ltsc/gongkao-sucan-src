#!/usr/bin/env bash
# 安装某个 Slidev 项目的依赖（node_modules 缺失时才执行）
set -euo pipefail

PROJECT="${1:?用法: install.sh <slidev项目目录>}"

if [[ ! -f "$PROJECT/slides.md" ]]; then
  echo "错误：$PROJECT 不是 Slidev 项目（缺少 slides.md）" >&2
  exit 1
fi

cd "$PROJECT"

if [[ -d node_modules && -x node_modules/.bin/slidev ]]; then
  echo "依赖已存在：$PROJECT"
  exit 0
fi

echo "安装依赖：$PROJECT"
# 构建不需要浏览器内核；导出 PDF 用浏览器内 #/export，避免下载 190MB 的 Chromium
PLAYWRIGHT_SKIP_BROWSER_DOWNLOAD=1 npm install --no-audit --no-fund
