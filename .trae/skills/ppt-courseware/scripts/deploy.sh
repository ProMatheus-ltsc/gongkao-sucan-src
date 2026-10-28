#!/usr/bin/env bash
# 提交并推送到 GitHub Pages 仓库
# 用法: GH_TOKEN=xxx deploy.sh <站点目录> [提交说明]
# 未提供 GH_TOKEN 时使用本机已登录的 git 凭据
set -euo pipefail

SITE="${1:?用法: deploy.sh <站点目录> [提交说明]}"
MESSAGE="${2:-更新课件}"

cd "$SITE"

if [[ ! -d .git ]]; then
  echo "错误：$SITE 不是 git 仓库" >&2
  exit 1
fi

git add -A

if git diff --cached --quiet; then
  echo "没有需要提交的变更"
else
  git -c user.name="${GIT_USER_NAME:-ProMatheus-ltsc}" \
      -c user.email="${GIT_USER_EMAIL:-17454962+ProMatheus-ltsc@users.noreply.github.com}" \
      commit -q -m "$MESSAGE"
fi

if [[ -n "${GH_TOKEN:-}" ]]; then
  git -c credential.helper='!f() { echo username=x-access-token; echo password='"$GH_TOKEN"'; }; f' \
      push origin "${BRANCH:-main}"
else
  git push origin "${BRANCH:-main}"
fi

echo "已推送：$(git rev-parse --short HEAD)"
