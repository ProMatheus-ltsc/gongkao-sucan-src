#!/usr/bin/env bash
# 导出单套课件为 PDF（无批注基线版）
# 需要 Chromium：首次使用先执行 npx playwright install chromium（约 190MB）
# 带批注的 PDF 请在浏览器打开课件后点“导出 PDF”（#/export），无需本脚本
# 用法: export-pdf.sh <slidev项目目录> [输出文件名]
set -euo pipefail

PROJECT="${1:?用法: export-pdf.sh <slidev项目目录> [输出文件名]}"
NAME="${2:-$(basename "$PROJECT").pdf}"

if [[ ! -f "$PROJECT/slides.md" ]]; then
  echo "错误：$PROJECT 不是 Slidev 项目（缺少 slides.md）" >&2
  exit 1
fi

if [[ ! -x "$PROJECT/node_modules/.bin/slidev" ]]; then
  "$(dirname "$0")/install.sh" "$PROJECT"
fi

cd "$PROJECT"
npx slidev export --format pdf --output "$NAME"
echo "PDF：$PROJECT/$NAME"
