#!/usr/bin/env python3
"""按 SKILL 第七节的课堂呈现规则自检 Slidev 课件。

用法：
  python3 scripts/check-rules.py <项目目录> [<项目目录> ...]

退出码 0 表示全部通过，1 表示存在违规页。
"""

import re
import sys
from pathlib import Path

MAX_CLICKS = 4
HOOK_EXEMPT = ("目录", "练习", "随机", "带走")
FORMULA_MIN = "1.65rem"


def split_slides(text):
    """按 Slidev 的 frontmatter 切页，返回 [(title, page_text), ...]。"""
    slides = []
    for block in re.split(r"\n---\n", text):
        title = re.search(r"^# (.+)$", block, re.M)
        if title:
            slides.append((title.group(1), block))
    return slides


def check_project(project):
    slides_md = project / "slides.md"
    if not slides_md.exists():
        return [f"缺少 {slides_md}"], 0

    problems = []
    slides = split_slides(slides_md.read_text(encoding="utf-8"))

    for index, (title, page) in enumerate(slides):
        if index == 0:  # 封面页豁免
            continue
        nums = re.findall(r'v-click(?:\.[\w-]+)?=(\d+)', page)
        if re.search(r"v-click(?![\w.=-])", page):
            problems.append(f"{title}：存在未编号的 v-click")
        max_click = max((int(n) for n in nums), default=0)
        note = re.search(r"<!--([\s\S]*?)-->", page)
        note_text = note.group(1) if note else ""
        note_clicks = len(re.findall(r"click \d+", note_text))

        if max_click > MAX_CLICKS:
            problems.append(f"{title}：{max_click} 击，超过 {MAX_CLICKS} 击上限")
        if max_click and note_clicks != max_click:
            problems.append(f"{title}：备注 {note_clicks} 个 click，实际 {max_click} 击")
        if max_click and "click 1" not in note_text:
            problems.append(f"{title}：备注缺少 click 1")

        if not any(k in title for k in HOOK_EXEMPT) and 'class="hook"' not in page:
            problems.append(f"{title}：缺 .hook 钩子")
        if "练习" in title and "<ClickReveal" not in page:
            problems.append(f"{title}：练习页未使用 ClickReveal")

    style = project / "style.css"
    if style.exists():
        css = style.read_text(encoding="utf-8")
        if not re.search(rf"\.formula\s*\{{\s*font-size:\s*{re.escape(FORMULA_MIN)}", css):
            problems.append(f"style.css：.formula 未设为 {FORMULA_MIN}")
        if ".hook" not in css:
            problems.append("style.css：缺 .hook 样式")
    else:
        problems.append("缺少 style.css")

    return problems, len(slides)


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 2
    failed = False
    for arg in sys.argv[1:]:
        project = Path(arg).resolve()
        problems, count = check_project(project)
        status = "PASS" if not problems else "FAIL"
        print(f"[{status}] {project.name}（{count} 页）")
        for p in problems:
            print(f"  - {p}")
        failed = failed or bool(problems)
    return 1 if failed else 0


if __name__ == "__main__":
    sys.exit(main())
