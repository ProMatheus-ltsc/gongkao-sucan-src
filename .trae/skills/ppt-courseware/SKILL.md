---
name: "ppt-courseware"
description: "Builds instructor-led Slidev courseware with staged formula reveals, suspense pacing, animation styles, and typography rules. Invoke when creating or refining PPT/Slidev decks, classroom animations, or slide content breakdown."
---

# PPT 课件制作

面向“老师讲课”而不是“PPT 展示”的规范。核心原则：**动画是注意力的节拍器，不是装饰**。一页内容在被讲之前，不该全部出现。

本文件按编号组织，便于逐条修改：回复编号即可（如“A5 改成 2 步”“F3 字号太小”）。

| 编号 | 范围 |
| --- | --- |
| B | 课堂背景与讲述节奏 |
| T | 技术方案与实现 |
| A | 动画样式库 |
| F | 字体与视觉层级 |
| C | 内容拆分与点击脚本 |

---

## 一、课堂背景（B）

### B1 课堂的真实节奏

老师讲课不是“翻页朗读”，而是四拍循环：

1. **抛问题**：先让学生看到题干或数字，不给答案。
2. **等反应**：留 3–5 秒，允许学生心算、皱眉、说错。
3. **给铺垫**：出现已知条件、公式、方法第一步。
4. **落结论**：最后才让答案和方法同时完整。

所以每一页都要回答：**这一页的“悬念”是什么？什么时候揭晓？**

### B2 三种悬念

- **视觉悬念**：题干先出现，关键数字/答案先遮住。
- **认知悬念**：先给错误直觉（“多数人会列竖式”），再用反例推翻。
- **节奏悬念**：推导分步出现，最后一步才落到结论。

### B3 一页的信息预算

- 标题 ≤ 12 字，一页只讲一个结论。
- 正文 ≤ 3 个信息块；同屏文字 ≤ 80 字。
- 一页只有一个视觉焦点（公式、图、或数字），其余降级为辅助色。
- 每 3–4 页安排一次停顿点：提问、口算、选择题、举手。

### B4 禁止项

- 题干、公式、答案同屏一次性出现。
- 一页塞两个方法，或一个方法配三张图。
- 动画与内容无关（飞入、旋转、弹跳堆叠）。

---

## 二、技术方案（T）

**技术栈固定为 Slidev**，不再评估其他方案。所有课件按同一套目录、构建、部署流程执行。

### T0 固定工程结构与脚本

一个课件工程 = 一个 Slidev 项目，必须包含：

```
<课件名>-slidev/
├── slides.md            # 内容与 frontmatter
├── style.css            # 主题 token + 动画（含第七节规则）
├── global-bottom.vue    # 页码、导出按钮（从 skill 的 components/ 复制）
├── components/          # 复用组件（从 skill 的 components/ 复制）
├── public/              # 图片等静态资源
└── package.json         # @slidev/cli + theme-default + playwright-chromium
```

构建脚本已固化在 `scripts/`，不要每次临时拼命令：

| 脚本 | 作用 | 用法 |
| --- | --- | --- |
| `install.sh` | 缺 `node_modules` 时安装依赖 | `scripts/install.sh <项目>` |
| `build.sh` | 构建并以 `--base ./` 同步到站点子目录 | `scripts/build.sh <项目> <站点子目录>` |
| `build-all.sh` | 一键构建全部课件 + `.nojekyll` | `scripts/build-all.sh` |
| `export-pdf.sh` | 导出基线 PDF（无批注） | `scripts/export-pdf.sh <项目> [文件名]` |
| `preview.sh` | 本地静态预览 | `scripts/preview.sh <站点目录> [端口]` |
| `check-rules.py` | 按第七节规则自检课件 | `python3 scripts/check-rules.py <项目> [<项目>...]` |
| `deploy.sh` | 提交并推送 Pages | `GH_TOKEN=xxx scripts/deploy.sh <站点目录> "说明"` |

新增课件时只改 `build-all.sh` 里的 `PROJECTS` 数组，一处维护。

### T1 基线配置

- Slidev 53 + `theme-default`。
- `routerMode: hash`（静态托管刷新不 404）。
- `browserExporter: true`（浏览器内导出 PDF）。
- `drawings.persist: true`（批注存浏览器本地）。
- 构建统一走 `build.sh`（内部即 `npx slidev build --base ./`）。
- 部署：GitHub Pages（main / root），根目录放 `.nojekyll`。

### T2 动画的两层

1. **翻页过渡**：frontmatter `transition: slide-left`，全局统一，只负责“换页”。
2. **页内入场/分步**：`v-click` 或 CSS 动画，负责“讲到哪、出现到哪”。

两层不要同时花哨：翻页用位移，页内用淡入或上浮。

### T3 `v-click` 基本用法

```md
<div v-click>点一下才出现（默认淡入）</div>

<div v-click="2">第二下才出现（数字从 1 开始）</div>

<div v-click.fade-in>淡入</div>
<div v-click.up>从下方上浮</div>
<div v-click.hide>点一下后隐藏（用于遮答案）</div>
```

可用修饰：`fade`、`fade-in`、`up`、`down`、`left`、`right`、`scale`、`none`。

### T4 逐条出现：`v-clicks`

```md
<div v-clicks>
  <div>第一步：看选项差距</div>
  <div>第二步：定计算精度</div>
  <div>第三步：选对应方法</div>
</div>
```

子元素自动按顺序各占一次点击，适合目录、步骤、要点清单。

### T5 公式分步推导

```md
<div v-click>

$$
a \times (b + c) = a \times b + a \times c
$$

</div>

<div v-click>

$$
137 \times 28 = 137 \times 30 - 137 \times 2
$$

</div>

<div v-click>

$$
= 4110 - 274 = 3836
$$

</div>
```

注意：每个 `<div>` 与 `$$` 之间留空行，MDC 才会正确解析。

### T6 答案遮罩与揭晓

```md
<div class="q">3846 ÷ 1.27 ≈ ?</div>

<div v-click.hide class="answer-reveal">
  <div class="answer">3028</div>
</div>
```

先让学生看题，点击后才出现答案；不要反过来。

### T7 打印 / 导出保护

所有自动动画必须包在屏幕媒体查询里，打印时归零：

```css
@media screen and (prefers-reduced-motion: no-preference) {
  /* 动画规则 */
}

@media print {
  .slidev-page *, .slidev-page *::before, .slidev-page *::after {
    animation: none !important;
    transition: none !important;
  }
}
```

### T8 校验清单

- 每页点击数 ≤ 4；最后一下点完，页面没有空白区。
- `#/export` 导出的 PDF，每一页内容完整（尤其被 `v-click` 包裹的公式）。
- 16:9 投影下无溢出、无横向滚动。
- 手机窄屏时，网格降为单列且字号不炸。

### T9 课件组件库（`components/`）

skill 的 `components/` 是唯一来源；复制到课件项目的 `components/` 后即自动全局注册。

| 组件 | 用途 | 用法 |
| --- | --- | --- |
| `ClickReveal.vue` | 练习答案点击揭晓 | `<ClickReveal label="01　137 × 28" answer="3836" />` |
| `Countdown.vue` | 限时口算倒计时 | `<Countdown :seconds="90" />` |
| `RandomDrill.vue` | 乘法 / 乘方随机加练 | `<RandomDrill />` |
| `RandomDivision.vue` | 除法随机加练 | `<RandomDivision />` |
| `RandomDiff.vue` | 多项求差随机加练 | `<RandomDiff />` |
| `RandomAdd.vue` | 多项连加随机加练 | `<RandomAdd />` |
| `global-bottom.vue` | 页码 + 导出按钮，放项目根目录 | 无需引用，Slidev 自动挂载 |

约定：练习页答案只允许用 `ClickReveal`；倒计时只允许用 `Countdown`；不要在页面内重写同类组件。

---

## 三、动画样式库（A）

每个样式给出：用途 / 实现 / 建议时长。**一套课最多选 3 种**，重复使用形成节奏。

### A1 标题上浮

- 用途：每页开场，视线先落到标题。
- 实现：CSS `sd-rise`，`translateY(18px)` + 淡入，0.45–0.5s。
- 注意：只给 `h1/h2`，不要给正文。

### A2 封面符号缩放

- 用途：封面视觉锤（×²、÷）。
- 实现：`sd-pop`，`scale(.9)→1`，0.6–0.7s。
- 注意：只用在封面和章节扉页。

### A3 目录逐条

- 用途：课程地图，一条一条报。
- 实现：`v-clicks` 或 `nth-child` 延迟 80ms。
- 注意：5 条以内；每条不超过 12 字。

### A4 卡片错峰

- 用途：并列概念、对比项、三招四法。
- 实现：CSS `sd-rise` + `nth-child` 延迟 80–100ms。
- 注意：2–4 张卡片；超过 4 张改为逐条列表。

### A5 公式逐行推导

- 用途：核心方法页，最需要“留悬念”。
- 实现：每个等号一行一个 `v-click`，配合 `.calc-line` 左滑淡入。
- 节奏：问题 → 变形 → 代入 → 结果，共 3–4 击。
- 注意：不要一行公式拆成 6 击，学生会失去耐心。

### A6 答案遮罩揭晓

- 用途：口算题、例题、选择题。
- 实现：`v-click.hide` 包裹答案，或答案元素 `v-click`。
- 注意：题干必须先单独出现；揭晓时只动答案，不动题干。

### A7 重点高亮

- 用途：指出“这一步最容易错”。
- 实现：`v-click` 加 `.hl` 类，背景由透明变 amber 10%，0.3s。
- 注意：一页最多高亮 2 处。

### A8 对比翻转

- 用途：错误做法 vs 正确做法。
- 实现：左右两栏，先左（错）后右（对），各一次 click。
- 注意：两栏字号一致，避免“正确答案更大”的暗示。

### A9 步骤进度条

- 用途：多步方法，告诉学生“现在第几步”。
- 实现：`.bar` 分段宽度，随 click 逐段点亮。
- 注意：段数 = 实际步骤数，不要凑 4 段。

### A10 数字滚动

- 用途：强调量级差、增长率、倍数。
- 实现：CSS `counter` 或 JS 递增，0.6s 内完成。
- 注意：只用于结果数字，不用于题干条件。

### A11 画笔圈注

- 用途：现场圈题干关键词、划掉干扰项。
- 实现：Slidev 画笔（左下铅笔），批注持久化。
- 注意：这是老师动作，不要预置成动画。

### A12 页面转场

- 用途：章节切换。
- 实现：`transition: slide-left` 全局；章节扉页可单独 `fade`。
- 注意：全篇只用一种，避免每页不同方向。

### A13 动画时长与错峰基线

- 入场：0.35–0.5s，`cubic-bezier(.22,.61,.36,1)`。
- 错峰：80–100ms/项；最多 5 项。
- 单页动画总时长 ≤ 1.2s；超过就说明拆得不够。

---

## 四、字体风格（F）

### F1 字体角色

| 角色 | 字体 | 用法 |
| --- | --- | --- |
| 标题 | Noto Serif SC / Songti SC | 页标题、封面、章节扉页 |
| 正文 | Noto Sans SC / PingFang SC | 段落、卡片说明、注释 |
| 数字/公式 | Fira Code / ui-monospace | 算式、结果、代码、计时 |

### F2 字号层级（16:9，1280×720 基准）

- 封面主标题：56–62px
- 页标题 h1：36–42px
- 小标题 h2：26–30px
- 正文：16–18px
- 辅助说明 / 脚注：12–13px
- 公式主体：24–30px；结果数字可到 36px

### F3 行距与字距

- 正文 `line-height: 1.7`；标题 `1.15`。
- 中文标题 `letter-spacing: .04em`，正文不加字距。
- 数字用 `font-variant-numeric: tabular-nums`，避免跳动。

### F4 色彩 token（统一主题 C：暖纸讲稿）

```css
--paper: #f7f1e4;    /* 页面底色 */
--card: #fffdf7;     /* 卡片、表格底 */
--ink: #1f2a3a;      /* 标题、深色面板 */
--text: #232b36;     /* 主文字 */
--muted: #6d6455;    /* 次要文字 */
--line: rgba(74, 60, 40, 0.18);   /* 描边、分隔线 */
--amber: #d99a35;    /* 强调、当前步骤 */
--amber-d: #a8650f;  /* 答案、结论（浅底上可读） */
```

完整实现见 `themes/c-warm-paper.css`，两套课件 `style.css` 末尾已固化。

- 一页强调色面积 ≤ 10%。
- 答案、结论、当前步骤用 amber-d；其余用 text/muted。
- 深色面板（note-box）只做局部强调，不做整页背景，避免破坏“统一暖纸”的课堂感。

### F5 排版禁忌

- 一页超过 2 种字体。
- 正文全用衬线体（投影发虚）。
- 公式沿用系统默认字体（与正文割裂）。
- 用颜色区分“对/错”以外的语义（红绿只留给对错）。

---

## 五、内容拆分（C）

### C1 单页五拍结构

**钩子 → 铺垫 → 推导 → 结论 → 迁移**

- 钩子：一个问题、一个数字、一个错误直觉。
- 铺垫：学生已经会的部分，或方法第一步。
- 推导：1–3 步，每步一次 click。
- 结论：一句话，加粗，amber。
- 迁移：一道可立即套用的小题，或一个反例。

### C2 一套课的骨架（19 页参考）

| 页 | 作用 |
| --- | --- |
| 1 | 封面：课程名 + 一句目标 |
| 2 | 目录：5 个章节 |
| 3 | 痛点：时间账 / 常见错误 |
| 4 | 方法地图：本课学什么、不学什么 |
| 5–10 | 核心方法：每法 1–2 页，公式分步 |
| 11–13 | 三个陷阱：量级 / 单位 / 方向 |
| 14–16 | 练习：口算 → 实战 → 随机加练 |
| 17 | 总结：一页纸口诀 |
| 18 | 作业：7 天训练 |
| 19 | 结束页：联系方式 / 下一课 |

### C3 拆分原则

- 一个方法一页；一个公式一页；一个反例一页。
- 长推导拆成“问题页 + 推导页 + 结论页”，不要挤在一页。
- 练习页固定三步：题干 → 计时 → 答案。
- 一页讲不完，就拆页；拆完还讲不完，就删内容。

### C4 点击脚本（teacher script）

每页在备注里写清 click 与台词，例如：

```md
<!--
click 1：先看选项差距，问“最大和最小差多少？”
click 2：出现公式，强调“只保留两位有效数字”
click 3：出现答案，追问“为什么不是 3029？”
-->
```

备注不占投影面积，但决定讲课顺序。

### C5 页面自检

- 删掉这页，课是否讲不下去？否 → 合并。
- 学生 5 秒内能找到本页焦点吗？
- 本页有没有“未揭示的答案”？它在第几击出现？
- 这一页的动画，是否对应一句具体台词？

---

## 六、迭代工作流

1. 按 **C** 拆页，写 click 脚本（先不写样式）。
2. 按 **F** 定字体与层级，只保留一个视觉焦点。
3. 按 **A** 选 2–3 种动画，写进页面。
4. 按 **T** 实现、构建、部署。
5. 按 **T8** 校验：投影、手机、PDF 三条路径都过。
6. 每次只改一个编号，避免同时动内容和动画。

## 七、课堂呈现规则（已固化）

以下 6 条已落实到两套课件，并作为新课件与后续修改的强制规则。

| 编号 | 规则 | 落地方式 |
| --- | --- | --- |
| A5 | 方法页必须分步推导，禁止一次全给 | 每个核心方法页 2–4 个 `v-click.fade-in="n"`，按“问题 → 公式 → 代入 → 结论”推进 |
| A6 | 练习页答案不得与题干同屏 | 统一用 `ClickReveal` 组件，点击后揭晓 |
| A9 | 时间账 / 进度条必须随 click 点亮 | 每段一个 `v-click`，讲完一段亮一段，最后合成整体 |
| C1 | 内容页必须先抛问题再给结论 | 页首用 `<div class="hook">…</div>`，由 `::before` 自动加“先问：” |
| C4 | 有 v-click 的页面，备注必须带 click 编号 | 备注写成 `click 1：…`、`click 2：…`，编号与页面最大 click 一致 |
| F2 | 主体公式字号 26–30px | `.formula` 1.65rem、`.formula.big` 与 `.result` 1.85rem、`.formula.small` 1.18rem |

### 发布前检查（缺一不可）

1. **click 上限**：单页最多 4 击；超过就拆页，不要靠连点。
2. **编号对齐**：备注里的 `click n` 数量 = 页面实际最大 `v-click` 编号，不能多写空击。
3. **钩子覆盖**：内容页 100% 有 `.hook`；封面、目录、练习、结尾页豁免。
4. **练习揭晓**：练习页只允许 `ClickReveal`，不允许把答案直接写在题干下。
5. **字号下限**：`.formula` ≥ 1.65rem；`formula.small` 只用于卡片内辅助公式。
6. **构建验证**：`build-all.sh` 通过后，用浏览器逐页点到最后一击，确认无溢出、无空白、无重叠；再导出 PDF 抽查。

### 一键自检

```bash
python3 .trae/skills/ppt-courseware/scripts/check-rules.py <项目目录> [<项目目录>...]
```

脚本检查：click 上限、备注编号对齐、`.hook` 覆盖、练习页 `ClickReveal`、`.formula` 字号与 `.hook` 样式；全部通过才可构建部署。

> 修改任何一页后，先对照这 6 条自查，再构建部署。

---

## 使用约定

- 修改某条时，直接说编号与目标，例如：“A5 公式推导改成 2 击，用在拆分法页”。
- 新样式先加进 **A** 库，再应用到页面，避免每页各写一套。
- 动画只为“讲述顺序”服务；没有台词的动画，删掉。
- 新组件先放进 `components/`，再由课件项目复制使用；不要在各项目里各改一份。
- 交付前必须跑 `check-rules.py`，PASS 后再 `build-all.sh`。
