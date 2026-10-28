---
theme: default
title: 乘法与乘方 · 资料分析速算课
info: |
  面向大学生与上班族备考者的资料分析速算课
layout: cover
class: cover-dark
transition: slide-left
highlighter: shiki
lineNumbers: false
routerMode: hash
browserExporter: true
drawings:
  persist: true
---

<div class="cover-mark">×<sup>2</sup></div>

# 乘法与乘方

## 从「会算」到「算得够快」

<div class="cover-meta">
资料分析速算课 ｜ 19 页 ｜ 含课堂互动
</div>

<div class="cover-foot">面向大学生 / 上班族备考者　·　主讲：____________</div>

<!--
开场不要先讲方法。先让学员算一道 137×28，计时 15 秒，多数人会列竖式。由此引出本课目标：把乘法从笔算改成口算加估算。
-->

---
layout: default
class: paper
---

# 目录

<div class="toc">
  <div class="toc-row"><span class="toc-num">01</span><div><b>为什么先练乘法与乘方</b><small>75 秒一道题的账，先算清楚</small></div></div>
  <div class="toc-row"><span class="toc-num">02</span><div><b>乘法四法</b><small>拆分 / 凑整 / 交叉 / 分数化</small></div></div>
  <div class="toc-row"><span class="toc-num">03</span><div><b>乘方三招</b><small>平方表 / 速算式 / 连乘近似</small></div></div>
  <div class="toc-row"><span class="toc-num">04</span><div><b>三个陷阱</b><small>量级 / 单位 / 方向</small></div></div>
  <div class="toc-row"><span class="toc-num">05</span><div><b>课堂训练</b><small>8 题口算 + 3 题实战 + 随机加练</small></div></div>
</div>

<!--
目录只花 30 秒。强调第四部分是「不丢分」的关键。
-->

---
layout: default
class: paper
---

# 75 秒一道题，计算只能占 20 秒

<div class="hook">上次做不完，卡在读题、列式，还是计算？</div>

<div class="cards">
  <div class="card"><div class="stat">20 题</div><div class="cap">资料分析题量</div></div>
  <div class="card"><div class="stat">25 分钟</div><div class="cap">建议作答时间</div></div>
  <div class="card"><div class="stat">20 秒</div><div class="cap">单题计算预算</div></div>
</div>

<div class="bar">
  <div class="seg s1" v-click.fade-in="1" style="width:33.3%">读题 25s</div>
  <div class="seg s2" v-click.fade-in="2" style="width:20%">列式 15s</div>
  <div class="seg s3" v-click.fade-in="3" style="width:26.7%">计算 20s</div>
  <div class="seg s4" v-click.fade-in="4" style="width:20%">选答 15s</div>
</div>

<div class="insight">计算每超 10 秒，就有 10 秒从读题或检查里扣——错题往往不是算错，是没读完。</div>

<!--
click 1：先问「上次做不完卡在哪」，再点亮「读题 25s」。
click 2：列式 15s，问「列式慢，是不是在找数据」。
click 3：计算 20s，这是本课唯一要压的部分。
click 4：选答 15s，四段合起来正好 75 秒。
-->

---
layout: default
class: paper
---

# 资料分析的乘法，九成是「估」

<div class="hook">选项差距有多大？你每次是先看选项，还是先动笔？</div>

<div class="steps">
  <div class="step" v-click.fade-in="1"><span class="n">1</span><b>看选项差距</b><p>先扫四个选项，再动笔</p></div>
  <div class="step" v-click.fade-in="2"><span class="n">2</span><b>定计算精度</b><p>差距 &gt; 5%：粗估<br>1%–5%：两位有效数字<br>&lt; 1%：才需要精算</p></div>
  <div class="step" v-click.fade-in="3"><span class="n">3</span><b>选对应方法</b><p>拆分 / 凑整 / 分数化</p></div>
</div>

<div class="note-box" v-click.fade-in="4">精度不是越准越好，是「够用就好」。</div>

<!--
click 1：先问「先看选项还是先动笔」，停 3 秒，让学员承认自己常常直接算。
click 2：第 2 张卡是重点：选项差距决定精度。
click 3：第 3 张卡：精度定了，方法才有意义。
click 4：落到「够用就好」，为后面所有方法定调。
-->

---
layout: default
class: paper
---

# 乘法一：拆分法

<div class="kicker">把难乘的拆成整十</div>

<div class="hook">28 离哪个整十最近？</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">原理</div>
    <div class="formula" v-click.fade-in="1">a × (b + c) = a × b + a × c</div>
    <p v-click.fade-in="1">拆成 30−2、100−3、50+1 这类整十 / 整百。</p>
    <p class="amber" v-click.fade-in="1"><b>口令：拆整十，补零头</b></p>
  </div>
  <div class="card pad">
    <div class="kicker">例：137 × 28</div>
    <div class="calc-line" v-click.fade-in="2">137 × 30 = 4110</div>
    <div class="calc-line" v-click.fade-in="3">− 137 × 2 = 274</div>
    <div class="calc-rule" v-click.fade-in="4"></div>
    <div class="result" v-click.fade-in="4">= 3836</div>
    <p class="muted" v-click.fade-in="4">两步心算完成，不用竖式。</p>
  </div>
</div>

<div class="footnote">适用：一个因数距整十 / 整百不超过 3，且两个因数都在两位以内。</div>

<!--
click 1：先问「28 离谁最近」→ 30；给分配律，并强调「拆整十，补零头」。
click 2：先算 137×30 = 4110，问「为什么是 411 补一个 0」。
click 3：再算 137×2 = 274，强调这是「多算的部分」。
click 4：减回去得 3836；点题「两步心算，不用竖式」。
-->

---
layout: default
class: paper
---

# 乘法二：凑整补偿

<div class="kicker">多算的要减掉</div>

<div class="hook">498 离 500 差多少？这 2 个 37 要不要减？</div>

<div class="formula big">a × b = (a ± d) × b ∓ d × b</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">整数凑整</div>
    <div class="calc-line" v-click.fade-in="2">498 × 37</div>
    <div class="calc-line" v-click.fade-in="2">= 500×37 − 2×37</div>
    <div class="calc-line" v-click.fade-in="3">= 18500 − 74</div>
    <div class="result small" v-click.fade-in="4">= 18426</div>
  </div>
  <div class="card pad">
    <div class="kicker">百分数凑整</div>
    <div class="calc-line" v-click.fade-in="2">12.8% × 356</div>
    <div class="calc-line" v-click.fade-in="2">= 12.5%×356 + 0.3%×356</div>
    <div class="calc-line" v-click.fade-in="3">= 44.5 + 1.07</div>
    <div class="result small" v-click.fade-in="4">≈ 45.6</div>
  </div>
</div>

<div class="warn-box">补偿项的符号最容易错：多算的要减，少算的要加。</div>

<!--
click 1：只给公式，先问「498 离 500 差多少」。
click 2：两列同时变形，让学员看到「都只差一点点」。
click 3：分别算出 18500−74 和 44.5+1.07，停一下让他们心算。
click 4：两个结果一起揭晓；立刻强调补偿项符号。
-->

---
layout: default
class: paper
---

# 乘法三：两位数相乘

<div class="kicker">头头、交叉、尾尾</div>

<div class="hook">47 × 63，能不能拆成「三块」来算？</div>

<div class="two-col wide-right">
  <div class="digit-grid" v-click.fade-in="1">
    <div class="digit">4</div><div class="digit">6</div>
    <div class="digit">7</div><div class="digit">3</div>
    <div class="digit-caption">47 × 63</div>
  </div>
  <div>
    <div class="calc-row" v-click.fade-in="2"><span>头 × 头</span><b>4 × 6 = 24</b><i>→ 2400</i></div>
    <div class="calc-row" v-click.fade-in="3"><span>交叉相加</span><b>4×3 + 7×6 = 54</b><i>→ 540</i></div>
    <div class="calc-row" v-click.fade-in="3"><span>尾 × 尾</span><b>7 × 3 = 21</b><i>→ 21</i></div>
    <div class="calc-rule" v-click.fade-in="4"></div>
    <div class="result" v-click.fade-in="4">2400 + 540 + 21 = 2961</div>
  </div>
</div>

<div class="footnote">交叉和 ≥ 10 时记得进位；这是唯一需要「背位置」的方法。</div>

<!--
click 1：先让学生看四个数字，问「先算哪一块」。
click 2：头×头 24，补两个 0 得 2400。
click 3：交叉 54 补一个 0，尾尾 21，两块一起给。
click 4：三块相加 2961；提醒交叉和进位。
-->

---
layout: default
class: paper
---

# 乘法四：百分数换分数

<div class="hook">356 × 12.5%，一定要乘吗？能不能直接除？</div>

<div class="kicker">乘法变除法，少一步、少错一位</div>

<table class="frac-table">
  <tr><td>50% = 1/2</td><td>33.3% = 1/3</td><td>25% = 1/4</td><td>20% = 1/5</td></tr>
  <tr><td>16.7% = 1/6</td><td>14.3% = 1/7</td><td>12.5% = 1/8</td><td>11.1% = 1/9</td></tr>
  <tr><td>9.1% = 1/11</td><td>8.3% = 1/12</td><td>6.25% = 1/16</td><td>5% = 1/20</td></tr>
</table>

<div class="note-box light" v-click.fade-in="1">
  <div class="big-line">356 × 12.5%　=　356 ÷ 8　=　44.5</div>
  <small>同一道题，除法比乘法少一步，也不容易点错小数点。</small>
</div>

<div class="insight" v-click.fade-in="2">反向也成立：÷ 7 ≈ × 14.3%。先背 1/2–1/12，再补 1/16、1/20。</div>

<!--
click 1：先背表，再给 356×12.5% → ÷8 的例子。
click 2：点反向用法「÷7 ≈ ×14.3%」，布置 1/2–1/12 记忆。
-->

---
layout: default
class: paper
---

# 乘方一：平方表 11–30

<div class="hook">27² 忘了，能用 25² 推出来吗？</div>

<div class="kicker">看到就要报出来</div>

<table class="sq-table">
  <tr class="head"><th>n</th><th>n²</th><th>n</th><th>n²</th><th>n</th><th>n²</th><th>n</th><th>n²</th></tr>
  <tr><td>11</td><td><b>121</b></td><td>12</td><td><b>144</b></td><td>13</td><td><b>169</b></td><td>14</td><td><b>196</b></td></tr>
  <tr><td>15</td><td><b>225</b></td><td>16</td><td><b>256</b></td><td>17</td><td><b>289</b></td><td>18</td><td><b>324</b></td></tr>
  <tr><td>19</td><td><b>361</b></td><td>20</td><td><b>400</b></td><td>21</td><td><b>441</b></td><td>22</td><td><b>484</b></td></tr>
  <tr><td>23</td><td><b>529</b></td><td>24</td><td><b>576</b></td><td>25</td><td><b>625</b></td><td>26</td><td><b>676</b></td></tr>
  <tr><td>27</td><td><b>729</b></td><td>28</td><td><b>784</b></td><td>29</td><td><b>841</b></td><td>30</td><td><b>900</b></td></tr>
</table>

<div class="anchors" v-click.fade-in="1">三个锚点：20² = 400　｜　25² = 625　｜　30² = 900</div>
<div class="footnote" v-click.fade-in="2">忘了某个平方，用最近锚点推：27² = 25² + 2 × (25 + 27) = 729。</div>

<!--
click 1：先问「忘了能不能推」，再给三个锚点 400 / 625 / 900。
click 2：用 27² 演示「锚点 + 差平方」，让学生不再死背全表。
-->

---
layout: default
class: paper
---

# 乘方二：平方速算三式

<div class="hook">48²、35²、97²，哪一个能一眼报出答案？</div>

<div class="cards">
  <div class="card pad" v-click.fade-in="1">
    <div class="kicker">① 完全平方</div>
    <div class="formula small">(a ± b)² = a² ± 2ab + b²</div>
    <div class="calc-line">48² = 2500 − 200 + 4</div>
    <div class="result small">= 2304</div>
    <div class="pill">接近整十时用</div>
  </div>
  <div class="card pad" v-click.fade-in="2">
    <div class="kicker">② 尾数 5</div>
    <div class="formula small">(n5)² = n(n+1) 接 25</div>
    <div class="calc-line">35² → 3×4 = 12</div>
    <div class="result small">→ 1225</div>
    <div class="pill">个位是 5 直接秒</div>
  </div>
  <div class="card pad" v-click.fade-in="3">
    <div class="kicker">③ 接近 100</div>
    <div class="formula small">(100 − d)² = 10000 − 200d + d²</div>
    <div class="calc-line">97² = 10000 − 600 + 9</div>
    <div class="result small">= 9409</div>
    <div class="pill">两位大数最稳</div>
  </div>
</div>

<div class="footnote" v-click.fade-in="4">平方没有捷径，只有「锚点 + 微调」。先把 20 以内练到条件反射，再扩到 30。</div>

<!--
click 1：先给①，问「48 离 50 差多少」，再落到 2304。
click 2：给②，先问「35² 尾数是多少」，再给 12 接 25。
click 3：给③，问「97 离 100 差多少」，再算 9409。
click 4：收口「锚点 + 微调」，布置 20 以内条件反射。
-->

---
layout: default
class: paper
---

# 乘方三：连乘近似

<div class="kicker">多次增长，一次算完</div>

<div class="hook">1.08 连乘三次，真的要算到底吗？</div>

<div class="note-box" v-click.fade-in="1">
  <div class="big-line">(1 + r)ⁿ ≈ 1 + nr + n(n−1)/2 · r²</div>
</div>

<table class="mini-table" v-click.fade-in="2">
  <tr><th>r = 8%，n = 3</th><th>一阶</th><th>加二阶</th><th>真值</th></tr>
  <tr><td>结果</td><td>1 + 3×0.08 = 1.24</td><td>1.24 + 0.0192 = 1.2592</td><td><b>1.08³ = 1.2597</b></td></tr>
</table>

<div class="insight" v-click.fade-in="3">误差约 0.04%，足够选对选项。使用边界：n ≤ 3 且 r ≤ 10% 用一阶；n = 4–5 或 r = 10%–15% 加二阶；r &gt; 15% 直接精算。</div>

<!--
click 1：先问「真的要算到底吗」，再给近似式。
click 2：带学员填表：一阶 1.24，二阶 1.2592，真值 1.2597。
click 3：点误差 0.04%，给使用边界；强调「够选对选项」。
-->

---
layout: default
class: paper
---

# 乘方在真题里的三种形态

<div class="hook">题目要的是「倍数」，还是「增长率」？</div>

<table class="mini-table wide">
  <tr><th>形态</th><th>公式</th><th>乘法在哪</th></tr>
  <tr><td>年均增长率</td><td>(1 + r)ⁿ = 现期 / 基期</td><td>连乘</td></tr>
  <tr><td>隔年增长</td><td>(1+r₁)(1+r₂) = 1 + r₁ + r₂ + r₁r₂</td><td>交叉项</td></tr>
  <tr><td>增长量</td><td>现期 × r / (1 + r)</td><td>乘除混合</td></tr>
</table>

<div class="insight" v-click.fade-in="1">先判断题目要「算倍数」还是「算增长率」，再决定近似还是精算。</div>

<!--
click 1：先问「要倍数还是增长率」；表格已在屏上，逐行讲第三列。
-->

---
layout: default
class: paper
---

# 陷阱一：量级

<div class="hook">1.37 × 2.8 和 137 × 28，差多少倍？</div>

<div class="two-col">
  <div class="card pad center">
    <div class="kicker">小数</div>
    <div class="calc-line big">1.37 × 2.8</div>
    <div class="result" v-click.fade-in="2">3.836</div>
  </div>
  <div class="card pad center">
    <div class="kicker">整数</div>
    <div class="calc-line big">137 × 28</div>
    <div class="result" v-click.fade-in="3">3836</div>
  </div>
</div>

<div class="insight" v-click.fade-in="4">同一组数字，差 <b>1000 倍</b>。固定顺序：先按整数算 → 再点小数点 → 最后换单位。</div>
<div class="footnote" v-click.fade-in="4">亿元 → 万元是 ×10⁴；万元 → 元又是 ×10⁴。材料给「亿元」、题干问「万元」，答案差 10000 倍。</div>

<!--
click 1：先问「差多少倍」，不讲答案。
click 2：揭晓小数结果 3.836。
click 3：揭晓整数结果 3836，让倍数差自己显现。
click 4：点出 1000 倍，给固定顺序和单位换算。
-->

---
layout: default
class: paper
---

# 陷阱二：单位与百分点

<div class="hook">增长 5% 和增长 5 个百分点，是一回事吗？</div>

<table class="mini-table wide">
  <tr><th>说法</th><th></th><th>另一种说法</th></tr>
  <tr><td>增长 5%</td><td class="neq">≠</td><td>增长 5 个百分点</td></tr>
  <tr><td>增长到 120%</td><td class="neq">≠</td><td>增长了 120%</td></tr>
  <tr><td>比重上升 3%</td><td class="neq">≠</td><td>比重上升 3 个百分点</td></tr>
</table>

<div class="warn-box" v-click.fade-in="1">口诀：问「率」用 %，问「差」用百分点；「到」是结果，「了」是增量。</div>

<!--
click 1：先问「5% 和 5 个百分点一样吗」；表格已在屏上，逐行读对照，再出口诀。
-->

---
layout: default
class: paper
---

# 陷阱三：方向

<div class="hook">同比下降 8%，分母是 1.08 还是 0.92？</div>

<div class="kicker">下降 8% 要除 0.92</div>

<div class="two-col">
  <div class="card pad wrong" v-click.fade-in="1">
    <div class="kicker">✕ 错误</div>
    <div class="calc-line">下降 8% → 用 1.08</div>
    <div class="calc-line">基期 = 现期 ÷ 1.08</div>
    <p class="muted">方向反了，结果必然偏小。</p>
  </div>
  <div class="card pad right" v-click.fade-in="2">
    <div class="kicker">✓ 正确</div>
    <div class="calc-line">r = −8%，1 + r = 0.92</div>
    <div class="calc-line">基期 = 现期 ÷ 0.92</div>
    <p class="muted">负号不能丢。</p>
  </div>
</div>

<div class="insight" v-click.fade-in="3">例：现期 460，同比下降 8% → 基期 = 460 ÷ 0.92 = 500。用 460 ÷ 1.08 = 425.9 就错了，而选项里通常正好有这个「诱饵」。</div>

<!--
click 1：先问「分母是 1.08 还是 0.92」，再亮错误写法，停 3 秒。
click 2：给正确写法 r = −8%，强调「先写负号，再写分母」。
click 3：用 460 的例子对照 425.9 与 500，点出「诱饵选项」。
-->

---
layout: default
class: paper
---

# 课堂练习 A：90 秒口算

<div class="drill-head">
  <div class="kicker">不写过程，只报答案；对 6 题及格，8 题满分</div>
  <Countdown :seconds="90" />
</div>

<div class="reveal-grid">
  <ClickReveal label="01　137 × 28" answer="3836" />
  <ClickReveal label="02　498 × 37" answer="18426" />
  <ClickReveal label="03　47 × 63" answer="2961" />
  <ClickReveal label="04　356 × 12.5%" answer="44.5" />
  <ClickReveal label="05　35²" answer="1225" />
  <ClickReveal label="06　48²" answer="2304" />
  <ClickReveal label="07　1.08³" answer="1.2597" />
  <ClickReveal label="08　1.12²" answer="1.2544" />
</div>

<!--
批改重点不是对错，而是看谁还在列竖式。点击卡片揭晓答案，计时器在右上角。
-->

---
layout: default
class: paper
---

# 课堂练习 B：3 道实战

<div class="two-col wide-left">
  <div>
    <div class="q-block">
      <div class="q">01　2023 年某市 GDP 为 1.37 万亿元，同比增长 8%，2022 年约为多少？</div>
      <ClickReveal answer="1.37 ÷ 1.08 ≈ 1.2685 万亿元" />
    </div>
    <div class="q-block">
      <div class="q">02　某产品 2021 年产量 2.4 万吨，2022 年增长 10%，2023 年增长 12%，2023 年产量约为多少？</div>
      <ClickReveal answer="2.4 × 1.1 × 1.12 = 2.9568 万吨" />
    </div>
    <div class="q-block">
      <div class="q">03　某指标连续三年年均增长 8%，三年累计增长约为多少？</div>
      <ClickReveal answer="1.08³ − 1 ≈ 25.97%" />
    </div>
  </div>
  <div class="tip-card">
    <div class="kicker">课堂要求</div>
    <p>每题第一行必须写：</p>
    <div class="formula small">选项差 → 精度</div>
    <p class="muted">没写的不算完成。</p>
    <p class="muted">第 1 题演示分数化：÷1.08 可近似为 ×(1−0.074)。</p>
  </div>
</div>

<!--
参考答：①1.2685 万亿 ②2.9568 万吨 ③25.97%。
-->

---
layout: default
class: paper
---

# 随堂加练：随机生成

<div class="two-col wide-left">
  <div class="drill-card">
    <RandomDrill />
  </div>
  <div class="tip-card">
    <div class="kicker">怎么用</div>
    <p>每次点「换一题」，题目和答案都会重算。</p>
    <p class="muted">先心算，再点「显示答案」；连续 5 题全对，再回整组练习。</p>
    <p class="muted">三类题分别对应：拆分、凑整、平方速算。</p>
  </div>
</div>

<!--
这个组件用于热身或控场，不计入正式成绩。可让学生轮流上来点。
-->

---
layout: cover
class: cover-dark
---

<div class="cover-mark small">×<sup>2</sup></div>

# 把这三张卡带走

<div class="takeaways">
  <div class="takeaway"><b>平方表 11–30</b><span>20²=400 ｜ 25²=625 ｜ 30²=900</span></div>
  <div class="takeaway"><b>百化分</b><span>12.5%=1/8 ｜ 14.3%≈1/7 ｜ 11.1%≈1/9</span></div>
  <div class="takeaway"><b>近似式</b><span>(1+r)ⁿ ≈ 1 + nr + n(n−1)r²/2</span></div>
</div>

<div class="closing-line">先定精度，再选方法，最后才动笔。</div>
<div class="cover-foot">7 天训练：每天 10 分钟口算 + 20 题资料分析限时，第 7 天回看错题归因。</div>

<!--
收尾一句话：乘法是为了估，乘方是为了连乘，陷阱是为了不白算。
-->
