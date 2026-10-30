---
theme: default
title: 多项连加 · 资料分析速算课
info: |
  面向大学生与上班族备考者的资料分析多项连加课
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

<div class="cover-mark">+</div>

# 多项连加

## 从「一项一项加」到「先凑整、再求和」

<div class="cover-meta">
资料分析速算课 ｜ 24 页 ｜ 每讲一法，立刻练两题
</div>

<div class="cover-foot">面向大学生 / 上班族备考者　·　主讲：____________</div>

<!--
开场先算 1247 + 2358 + 1896，限时 15 秒。多数人从左往右逐项加，进两次位就乱。由此引出：连加的关键不是加得快，是先配对、再估量级。
-->

---
layout: default
class: paper
---

# 目录

<div class="toc">
  <div class="toc-row"><span class="toc-num">01</span><div><b>为什么多项连加也会超时</b><small>进位一多，越加越乱</small></div></div>
  <div class="toc-row"><span class="toc-num">02</span><div><b>三个核心动作</b><small>估量级 / 凑整 / 基准数</small></div></div>
  <div class="toc-row"><span class="toc-num">03</span><div><b>两类高频题</b><small>连加与混合加减</small></div></div>
  <div class="toc-row"><span class="toc-num">04</span><div><b>比较与平均</b><small>两组和、连加后求平均</small></div></div>
  <div class="toc-row"><span class="toc-num">05</span><div><b>课堂训练</b><small>8 题口算 + 3 题实战 + 随机加练</small></div></div>
</div>

<!--
目录 30 秒。强调第三、四部分是「不丢分」的关键，五项内容都围绕同一件事：把多个数先变少。
-->

---
layout: default
class: paper
---

# 多项连加，难的不是加法

<div class="hook">你是不是也从左往右，一项一项地加？</div>

<div class="cards">
  <div class="card"><div class="stat">3–5 个</div><div class="cap">一道题常要相加的数字</div></div>
  <div class="card"><div class="stat">2–3 次</div><div class="cap">平均进位次数</div></div>
  <div class="card"><div class="stat">±1</div><div class="cap">漏一次进位，整题作废</div></div>
</div>

<div class="insight" v-click.fade-in="1">逐项加，每一次进位都要记住；先凑整，把 4 步压成 2 步，错误率直接减半。</div>

<div class="footnote">典型场景：求「合计」「总量」「全年」，材料给 3–5 个数，选项只差几百。</div>

<!--
click 1：先问「是不是逐项加」，停 3 秒；再点出「4 步压成 2 步」，顺带读脚注。
-->

---
layout: default
class: paper
---

# 三种形态，共用一条主线

<div class="hook">这三种，哪一种最容易漏进位？</div>

<table class="mini-table wide">
  <tr><th>形态</th><th>长什么样</th><th>主要风险</th></tr>
  <tr><td>多项连加</td><td>A + B + C</td><td>逐项进位，越加越乱</td></tr>
  <tr><td>混合加减</td><td>A + B − C</td><td>加项减项混在一起</td></tr>
  <tr><td>两组和比较</td><td>A + B 与 C + D</td><td>两组都硬加，浪费时间</td></tr>
</table>

<div class="insight" v-click.fade-in="1">主线只有一条：先估总和量级，再把能凑整的配对。连加、混合、比较，都是这两步。</div>

<div class="footnote">三种形态共用同一套检查：量级对不对、尾数对不对、单位有没有换。</div>

<!--
click 1：先让学员判断哪种最容易漏进位；再给出主线「估量级 → 配对」。
-->

---
layout: default
class: paper
---

# 第一原则：先估总和，再动笔

<div class="hook">三个两千左右的数，总和该在哪个量级？</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">先估</div>
    <div class="formula" v-click.fade-in="1">1200 + 2400 + 1900 ≈ 5500</div>
    <p v-click.fade-in="1">把每个数截到百位，先定总和的量级。</p>
    <p class="amber" v-click.fade-in="1"><b>口令：先定量级，再求精确</b></p>
  </div>
  <div class="card pad">
    <div class="kicker">例：1247 + 2358 + 1896</div>
    <div class="calc-line" v-click.fade-in="2">粗估约 5500</div>
    <div class="calc-line" v-click.fade-in="2">精算 5501</div>
    <div class="result small" v-click.fade-in="3">量级一致，可放心选</div>
  </div>
</div>

<div class="warn-box">选项差几百时，粗估就够；选项只差几十，才需要算到个位。</div>

<!--
click 1：先问「总和该在哪个量级」，给出粗估式 1200+2400+1900。
click 2：粗估 5500，精算 5501，量级一致。
click 3：落到「先定量级，再求精确」，并提醒选项精度。
-->

---
layout: default
class: paper
---

# 动作一：凑整分组

<div class="kicker">尾数互补的先配对，能凑整的先相加</div>

<div class="hook">638 和 362，为什么先加这两个？</div>

<div class="two-col wide-right">
  <div class="card pad">
    <div class="kicker">口诀</div>
    <div class="formula small" v-click.fade-in="1">尾数互补 → 凑整 → 再加剩余</div>
    <p class="muted">7+3、8+2、47+53，先配成整十整百。</p>
    <p class="amber"><b>1247 + 1753 = 3000</b></p>
  </div>
  <div>
    <div class="calc-row"><span>原式</span><b>638 + 362 + 1247 + 1753</b><i>逐项加 3 次进位</i></div>
    <div class="calc-row" v-click.fade-in="2"><span>配对</span><b>(638 + 362) + (1247 + 1753)</b><i>两组都凑整</i></div>
    <div class="calc-row" v-click.fade-in="2"><span>求和</span><b>1000 + 3000</b><i>只加 1 次</i></div>
    <div class="calc-rule"></div>
    <div class="result small" v-click.fade-in="3">= 4000</div>
  </div>
</div>

<div class="footnote">配对不是随便换顺序：先看末位能否凑 10，再看能否凑整百、整千。</div>

<!--
click 1：口诀先出，让学员知道「尾数互补」是配对的依据。
click 2：写出两组配对，1000 + 3000。
click 3：结果 4000；强调配对看末位，不是看数字大小。
-->

---
layout: default
class: paper
---

# 即学即练：凑整分组

<div class="kicker">限时 40 秒，先找「尾数互补」的两对</div>

<div class="two-col">
  <div class="q-block">
    <div class="q">01　基础　478 + 522 + 1365 + 1635</div>
    <ClickReveal answer="(478 + 522) + (1365 + 1635) = 1000 + 3000 = 4000" />
  </div>
  <div class="q-block">
    <div class="q">02　进阶　1.28 + 0.72 + 2.46 + 1.54（万亿）</div>
    <ClickReveal answer="2.00 + 4.00 = 6.00 万亿" />
  </div>
</div>

<div class="footnote">配对看末位：8+2、6+4 先凑整，不要按原顺序硬加。</div>

<!--
先让学员说出「哪两个先加」，再说答案；说不出配对的回上一页。
-->

---
layout: default
class: paper
---

# 动作二：基准数法

<div class="kicker">四个数都接近 1000，就别硬加</div>

<div class="hook">1024 + 987 + 1156 + 842，硬加要几步？</div>

<div class="note-box">
  <div class="big-line" v-click.fade-in="1">1024 + 987 + 1156 + 842</div>
  <small v-click.fade-in="1">取基准 1000，先算 4 个基准，再加偏移</small>
</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">写成偏移</div>
    <div class="calc-line" v-click.fade-in="2">+24　−13　+156　−158</div>
    <div class="calc-line" v-click.fade-in="2">基准：1000 × 4 = 4000</div>
  </div>
  <div class="card pad">
    <div class="kicker">基准 + 偏移</div>
    <div class="calc-line" v-click.fade-in="3">24 − 13 + 156 − 158 = 9</div>
    <div class="result small" v-click.fade-in="3">4000 + 9 = 4009</div>
  </div>
</div>

<div class="footnote">基准数适合 3 个以上、且都在同一量级（如 900–1200）的连加；偏移超过基准一半时，换凑整更稳。</div>

<!--
click 1：先问「硬加要几步」，再给基准 1000。
click 2：写出四个偏移，基准和 4000。
click 3：偏移和 9，总和 4009；对比硬加三次进位。
-->

---
layout: default
class: paper
---

# 即学即练：基准数法

<div class="kicker">限时 50 秒，先写「基准 × 项数」，再写偏移</div>

<div class="two-col">
  <div class="q-block">
    <div class="q">01　基础　1210 + 980 + 1045 + 965</div>
    <ClickReveal answer="1000 × 4 = 4000 ｜ 偏移 +210 −20 +45 −35 = +200 → 4200" />
  </div>
  <div class="q-block">
    <div class="q">02　进阶　970 + 1035 + 990 + 1008 + 997</div>
    <ClickReveal answer="1000 × 5 = 5000 ｜ 偏移 −30 +35 −10 +8 −3 = 0 → 5000" />
  </div>
</div>

<div class="footnote">第 2 题偏移正好抵消，答案是整数 5000；不要因为「太整」而怀疑自己。</div>

<!--
先问「基准取多少、几项」；偏移正负写混的，回上一页重看两列法。
-->

---
layout: default
class: paper
---

# 动作三：进位与尾数校验

<div class="hook">算完，你怎么确认没漏进位？</div>

<div class="kicker">只算末两位，10 秒验算</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">例：1247 + 2358 + 1896</div>
    <div class="calc-line" v-click.fade-in="1">末两位：47 + 58 + 96 = 201</div>
    <div class="calc-line" v-click.fade-in="1">取 01，向百位进 2</div>
    <div class="result small" v-click.fade-in="2">结果 5501，尾数 01 ✓</div>
  </div>
  <div class="card pad">
    <div class="kicker">例：1024 + 987 + 1156 + 842</div>
    <div class="calc-line" v-click.fade-in="3">末两位：24 + 87 + 56 + 42 = 209</div>
    <div class="calc-line" v-click.fade-in="3">取 09，向百位进 2</div>
    <div class="result small" v-click.fade-in="4">结果 4009，尾数 09 ✓</div>
  </div>
</div>

<div class="footnote">尾数校验只能抓「末两位错」，抓不到量级错；量级要另看整数位。</div>

<!--
click 1：先问「怎么确认没漏进位」，示范末两位相加。
click 2：对上台 5501，尾数 01。
click 3：第二例四项末两位相加。
click 4：得 09，与 4009 对上；强调尾数不抓量级。
-->

---
layout: default
class: paper
---

# 即学即练：进位与尾数

<div class="kicker">限时 40 秒，先算末两位的和，再报进位</div>

<div class="two-col">
  <div class="q-block">
    <div class="q">01　基础　1364 + 2489 + 1756</div>
    <ClickReveal answer="64 + 89 + 56 = 209 → 尾数 09，进 2 → 5609" />
  </div>
  <div class="q-block">
    <div class="q">02　进阶　2038 + 1467 + 2954</div>
    <ClickReveal answer="38 + 67 + 54 = 159 → 尾数 59，进 1 → 6459" />
  </div>
</div>

<div class="footnote">只报「尾数 + 进位」就能判选项；进位漏掉的，回上一页看 201 的处理。</div>

<!--
先只让报尾数和进位，不报总和；这一步稳了再求和。
-->

---
layout: default
class: paper
---

# 例题一：三项连加

<div class="hook">「合计」两个字，提示你要加几个数？</div>

<div class="note-box light">
  <div class="big-line">某市三项收入分别为 1247 万元、2358 万元、1896 万元，合计多少？</div>
</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">列式</div>
    <div class="calc-line" v-click.fade-in="1">1247 + 2358 + 1896</div>
    <div class="calc-line" v-click.fade-in="1">粗估：1200 + 2400 + 1900 ≈ 5500</div>
  </div>
  <div class="card pad">
    <div class="kicker">计算</div>
    <div class="calc-line" v-click.fade-in="2">1247 + 2358 = 3605</div>
    <div class="calc-line" v-click.fade-in="3">3605 + 1896 = 5501</div>
    <div class="result small" v-click.fade-in="3">= 5501 万元</div>
  </div>
</div>

<div class="footnote">先估量级再精算：若选项是 5400 / 5500 / 5600，粗估就能排除两个。</div>

<!--
click 1：先问「合计要加几个数」，列出原式并粗估 5500。
click 2：前两项和 3605。
click 3：总和 5501；讲选项差几百时，粗估就够。
-->

---
layout: default
class: paper
---

# 即学即练：三项连加

<div class="kicker">限时 50 秒，三步都写：量级 → 求和 → 校验</div>

<div class="two-col">
  <div class="q-block">
    <div class="q">01　基础　2470 + 1856 + 3980</div>
    <ClickReveal answer="粗估 2500 + 1900 + 4000 = 8400 → 精算 8306，量级一致" />
  </div>
  <div class="q-block">
    <div class="q">02　进阶　2.47 + 1.856 + 3.98（万亿）</div>
    <ClickReveal answer="= 8.306 万亿（与整数版同一组数）" />
  </div>
</div>

<div class="footnote">先粗估再精算；只写结果没写量级的，按未完成处理。</div>

<!--
点开前先问「总和在 8000 还是 80000」，让量级先落地。
-->

---
layout: default
class: paper
---

# 例题二：混合加减

<div class="hook">加项和减项，要放在一起算吗？</div>

<div class="note-box light">
  <div class="big-line">某地财政收入 6382 万元，上级补助 1247 万元，支出 2358 万元。结余多少？</div>
</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">先分符号</div>
    <div class="calc-line" v-click.fade-in="1">6382 + 1247 − 2358</div>
    <div class="calc-line" v-click.fade-in="2">= (6382 + 1247) − 2358</div>
  </div>
  <div class="card pad">
    <div class="kicker">再求结果</div>
    <div class="calc-line" v-click.fade-in="3">7629 − 2358 = 5271</div>
    <div class="result small" v-click.fade-in="3">= 5271 万元</div>
  </div>
</div>

<div class="warn-box">加项先合群、减项单独放；不要把 1247 和 2358 混成一组。</div>

<!--
click 1：先问「加项减项要一起算吗」，列出原式。
click 2：加项先合群 6382 + 1247。
click 3：7629 − 2358 = 5271，并提醒别把加项减项混组。
-->

---
layout: default
class: paper
---

# 即学即练：混合加减

<div class="kicker">限时 50 秒，正项、负项各分一组</div>

<div class="two-col">
  <div class="q-block">
    <div class="q">01　基础　8240 − 1375 + 2168 − 943</div>
    <ClickReveal answer="正项和 10408，负项和 2318 → 8090" />
  </div>
  <div class="q-block">
    <div class="q">02　进阶　8.24 − 1.375 + 2.168 − 0.943（亿）</div>
    <ClickReveal answer="= 8.09 亿（与整数版同一组数）" />
  </div>
</div>

<div class="footnote">第 2 题小数位不齐，先补零对齐再分组，别在心算里先四舍五入。</div>

<!--
先问「正项和、负项和各多少」，再点答案；混在一起算的，回上一页。
-->

---
layout: default
class: paper
---

# 两组和比较：别把两组都硬加

<div class="hook">两组和比大小，非要都算出来吗？</div>

<div class="note-box">
  <div class="big-line" v-click.fade-in="1">A + B 与 C + D 比大小：先看哪一组的大数更多</div>
  <small v-click.fade-in="1">两组都四位时，先比千位，再比尾数</small>
</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">甲：8321 + 5028</div>
    <div class="calc-line">= 13349</div>
    <div class="calc-line">尾数 21 + 28 = 49</div>
  </div>
  <div class="card pad">
    <div class="kicker">乙：7194 + 6152</div>
    <div class="calc-line" v-click.fade-in="2">= 13346</div>
    <div class="result small" v-click.fade-in="3">甲大 3，选甲</div>
  </div>
</div>

<div class="footnote">只在「两组和比大小」时先比高位；题目要具体总和，仍然要完整相加。</div>

<!--
click 1：先问「非要都算吗」，给出「先比高位」的策略。
click 2：乙组和 13346，与甲组 13349 只差 3。
click 3：甲大 3；说明尾数校验也能用来比较。
-->

---
layout: default
class: paper
---

# 连加之后：求平均与求总量

<div class="hook">总和算出来了，下一步是除，还是乘？</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">求平均：先加后除</div>
    <div class="calc-line" v-click.fade-in="1">1024 + 987 + 1156 + 842 = 4009</div>
    <div class="calc-line" v-click.fade-in="2">4009 ÷ 4 = 1002.25</div>
    <div class="result small" v-click.fade-in="2">季均 1002.25 万元</div>
  </div>
  <div class="card pad">
    <div class="kicker">求总量：先乘后加</div>
    <div class="calc-line" v-click.fade-in="3">1002.25 × 4 = 4009</div>
    <p class="muted">平均数 × 个数 = 总量，可反向验算。</p>
    <p class="amber"><b>加法和除法互为检查</b></p>
  </div>
</div>

<div class="footnote">平均数除不尽时，保留两位小数；选项给整数时，先看总和量级再选。</div>

<!--
click 1：先问「下一步是除还是乘」，给出总和 4009。
click 2：除以 4 得 1002.25。
click 3：反向用平均数 × 4 验算，强调两条路互查。
-->

---
layout: default
class: paper
---

# 量级与单位

<div class="hook">4.009 万亿，是多少亿元？</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">先按整数算</div>
    <div class="calc-line">1.024 + 0.987 + 1.156 + 0.842</div>
    <div class="calc-line" v-click.fade-in="1">= 4.009 万亿</div>
    <div class="result small" v-click.fade-in="2">= 40090 亿元</div>
  </div>
  <div class="card pad">
    <div class="kicker">固定顺序</div>
    <div class="formula small" v-click.fade-in="3">整数 → 小数点 → 单位</div>
    <p class="muted">三步分开做，别一边加一边换单位。</p>
    <p class="amber"><b>万亿 → 亿：× 10000</b></p>
  </div>
</div>

<div class="warn-box">单位错位是最冤的失分：算对了 4.009，写成 4009 亿，整题照样零分。</div>

<!--
click 1：先问「4.009 万亿是多少亿」，算出 4.009 万亿。
click 2：换算 40090 亿元。
click 3：给固定顺序「整数 → 小数点 → 单位」，强调单位错位最冤。
-->

---
layout: default
class: paper
---

# 五个高频错误

<div class="hook">你错的是加错，还是漏进位？</div>

<table class="mini-table wide">
  <tr><th>错误</th><th>典型表现</th><th>修正</th></tr>
  <tr><td>逐项硬加</td><td>四项连加，进位三次</td><td>先凑整配对</td></tr>
  <tr><td>漏掉进位</td><td>末两位对了，百位少 1</td><td>末两位先验算</td></tr>
  <tr><td>符号混组</td><td>加项和减项放进同一组</td><td>加项减项分开</td></tr>
  <tr><td>不估量级</td><td>算出 550 却选 5500</td><td>先粗估再精算</td></tr>
  <tr><td>单位错位</td><td>万亿当亿、亿当万</td><td>最后统一换单位</td></tr>
</table>

<div class="insight" v-click.fade-in="1">这五条里，三条是「顺序错」，两条是「校验漏」。先改顺序，再谈速度。</div>

<!--
click 1：先问「加错还是漏进位」，再点出三条顺序错、两条校验漏；让学员给自己的错题归因。
-->

---
layout: default
class: paper
---

# 四步决策：拿到题先做什么

<div class="hook">拿到题，第一眼该看什么？</div>

<div class="steps">
  <div class="step" v-click.fade-in="1"><span class="n">1</span><b>估量级</b><p>截到百位，先定总和大概多少</p></div>
  <div class="step" v-click.fade-in="2"><span class="n">2</span><b>分符号</b><p>加项一组、减项一组，别混</p></div>
  <div class="step" v-click.fade-in="3"><span class="n">3</span><b>选动作</b><p>尾数互补凑整 / 同量级用基准 / 比大小先看高位</p></div>
  <div class="step" v-click.fade-in="4"><span class="n">4</span><b>校尾数与单位</b><p>末两位对得上，单位再换</p></div>
</div>

<div class="note-box">顺序反了等于白算：先估量级，再配对，最后才校验。</div>

<!--
click 1：估量级，截到百位。
click 2：分符号，加项减项各一组。
click 3：选动作，对应前三个方法。
click 4：校尾数与单位；点完再读 note 里的总口诀。
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
  <ClickReveal label="01　1247 + 2358 + 1896" answer="5501" />
  <ClickReveal label="02　1024 + 987 + 1156 + 842" answer="4009" />
  <ClickReveal label="03　6382 + 1247 − 2358" answer="5271" />
  <ClickReveal label="04　4573 + 1286 + 1107" answer="6966" />
  <ClickReveal label="05　1.24 + 2.36 + 1.89" answer="5.49" />
  <ClickReveal label="06　638 + 362 + 1247 + 1753" answer="4000" />
  <ClickReveal label="07　8321+5028 与 7194+6152" answer="左边大 3" />
  <ClickReveal label="08　4009 ÷ 4" answer="1002.25" />
</div>

<!--
批改重点：第 2 题是否用基准数；第 6 题是否先配对；第 7 题是否先比高位。
-->

---
layout: default
class: paper
---

# 课堂练习 B：3 道实战

<div class="two-col wide-left">
  <div>
    <div class="q-block">
      <div class="q">01　某市三项收入分别为 1247 万元、2358 万元、1896 万元，合计多少？</div>
      <ClickReveal answer="1247 + 2358 + 1896 = 5501 万元" />
    </div>
    <div class="q-block">
      <div class="q">02　四季度营收 1024、987、1156、842 万元，全年合计与季均分别是多少？</div>
      <ClickReveal answer="合计 4009 万元；季均 4009 ÷ 4 = 1002.25 万元" />
    </div>
    <div class="q-block">
      <div class="q">03　甲 8321 + 5028 万元，乙 7194 + 6152 万元，哪组总和高？</div>
      <ClickReveal answer="13349 &gt; 13346，甲组高 3 万元" />
    </div>
  </div>
  <div class="tip-card">
    <div class="kicker">课堂要求</div>
    <p>每题第一行必须写：</p>
    <div class="formula small">量级 → 配对 → 校验</div>
    <p class="muted">没写的，即使答对也算未完成。</p>
    <p class="muted">第 2 题先加后除；第 3 题先比高位。</p>
  </div>
</div>

<!--
参考答案：①5501 万元 ②4009 万元、1002.25 万元 ③甲组高 3 万元。第 2 题注意季均要除 4。
-->

---
layout: default
class: paper
---

# 随堂加练：随机生成

<div class="two-col wide-left">
  <div class="drill-card">
    <RandomAdd />
  </div>
  <div class="tip-card">
    <div class="kicker">怎么用</div>
    <p>每次点「换一题」，题目和答案都会重算。</p>
    <p class="muted">先心算，再点「显示答案」；连续 5 题全对，再回整组练习。</p>
    <p class="muted">三类题分别对应：三项连加、混合加减、两组和比较。</p>
  </div>
</div>

<!--
这个组件用于热身或控场，不计入正式成绩。可让学生轮流上来点。
-->

---
layout: cover
class: cover-dark
---

<div class="cover-mark small">+</div>

# 把这三句话带走

<div class="takeaways">
  <div class="takeaway"><b>先估量级</b><span>截到百位，先定总和大概多少</span></div>
  <div class="takeaway"><b>再凑整配对</b><span>尾数互补先加，同量级用基准</span></div>
  <div class="takeaway"><b>最后校验</b><span>末两位验进位，单位最后换</span></div>
</div>

<div class="closing-line">先估量级，再配对，最后校验。</div>
<div class="cover-foot">7 天训练：每天 10 分钟三项连加 + 10 道混合加减；第 7 天回看错题归因。</div>

<!--
收尾一句话：多项连加的速度来自「少加一次」，不是「加得快」。
-->
