---
theme: default
title: 多项求差 · 资料分析速算课
info: |
  面向大学生与上班族备考者的资料分析多项求差课
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

<div class="cover-mark">−</div>

# 多项求差

## 从「一项一项减」到「先分组、再求差」

<div class="cover-meta">
资料分析速算课 ｜ 24 页 ｜ 每讲一法，立刻练两题
</div>

<div class="cover-foot">面向大学生 / 上班族备考者　·　主讲：____________</div>

<!--
开场先算 6382−1247−2358，限时 15 秒。多数人会从左往右逐项减，减到第二次借位就乱。由此引出：多项求差的关键不是减得快，是先分组。
-->

---
layout: default
class: paper
---

# 目录

<div class="toc">
  <div class="toc-row"><span class="toc-num">01</span><div><b>为什么多项求差最容易崩</b><small>三个数以上，逐项减必乱</small></div></div>
  <div class="toc-row"><span class="toc-num">02</span><div><b>三个核心动作</b><small>分组 / 基准数 / 尾数校验</small></div></div>
  <div class="toc-row"><span class="toc-num">03</span><div><b>两类高频题</b><small>连减与混合加减</small></div></div>
  <div class="toc-row"><span class="toc-num">04</span><div><b>差值比较与复合差</b><small>别硬减、比重差、量级</small></div></div>
  <div class="toc-row"><span class="toc-num">05</span><div><b>课堂训练</b><small>8 题口算 + 3 题实战 + 随机加练</small></div></div>
</div>

<!--
目录 30 秒。强调第三、四部分是「不丢分」的关键，五项内容都围绕同一件事：先把式子变短。
-->

---
layout: default
class: paper
---

# 多项求差，难的不是减法

<div class="hook">你是不是也从左往右，一项一项地减？</div>

<div class="cards">
  <div class="card"><div class="stat">3–5 个</div><div class="cap">一道题常要处理的数字</div></div>
  <div class="card"><div class="stat">2 次</div><div class="cap">平均借位次数</div></div>
  <div class="card"><div class="stat">±1</div><div class="cap">符号错，整题归零</div></div>
</div>

<div class="insight" v-click.fade-in="1">逐项减，每减一次都可能借位、错符号；先分组，把 3 步压成 2 步，错误率直接减半。</div>

<div class="footnote">典型场景：求「其余」「差额」「多多少」，材料给 3–5 个数，选项只差几十。</div>

<!--
click 1：先问「是不是逐项减」，停 3 秒；再点出「3 步压成 2 步」，顺带读脚注。
-->

---
layout: default
class: paper
---

# 三种形态，共用一条主线

<div class="hook">这三种，哪一种最费时间？</div>

<table class="mini-table wide">
  <tr><th>形态</th><th>长什么样</th><th>主要风险</th></tr>
  <tr><td>多项连减</td><td>A − B − C</td><td>逐项借位，越减越乱</td></tr>
  <tr><td>混合加减</td><td>A + B − C − D</td><td>符号漏掉，正负反了</td></tr>
  <tr><td>差值比较</td><td>A − B 与 C − D</td><td>两个差都硬算，浪费时间</td></tr>
</table>

<div class="insight" v-click.fade-in="1">主线只有一条：先合并同类项，再动笔。连减合并减数，混合加减先分组，比较题先转成和。</div>

<div class="footnote">三种形态都可以用同一套检查：分组是否凑整、符号是否带全、尾数是否对得上。</div>

<!--
click 1：先让学员判断哪种最费时间；再给出主线「先合并，再动笔」。
-->

---
layout: default
class: paper
---

# 第一原则：先分组，再求差

<div class="hook">三个数连减，先减哪个？</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">原理</div>
    <div class="formula" v-click.fade-in="1">A − B − C = A − (B + C)</div>
    <p v-click.fade-in="1">把要减的数先加在一起，只做一次减法。</p>
    <p class="amber" v-click.fade-in="1"><b>口令：减数合群，被减数不动</b></p>
  </div>
  <div class="card pad">
    <div class="kicker">例：6382 − 1247 − 2358</div>
    <div class="calc-line" v-click.fade-in="2">1247 + 2358 = 3605</div>
    <div class="calc-line" v-click.fade-in="2">6382 − 3605 = 2777</div>
    <div class="result small" v-click.fade-in="3">两步出结果</div>
  </div>
</div>

<div class="warn-box">分组的前提是「全是减号」。出现加号时，先把加项和减项各自分组，别混在一起。</div>

<!--
click 1：先问「先减哪个」，再给公式：减数先合群，只做一次减法。
click 2：算出减数和 3605，再减一次得 2777。
click 3：强调两步出结果，比逐项减少一次借位。
-->

---
layout: default
class: paper
---

# 动作一：分组相减

<div class="kicker">把能凑整的先放进同一组</div>

<div class="hook">8321 − 1286 − 1107，先加哪两个？</div>

<div class="two-col wide-right">
  <div class="card pad">
    <div class="kicker">口诀</div>
    <div class="formula small" v-click.fade-in="1">减号抱团 → 凑整 → 一次减</div>
    <p class="muted">1286 + 1107 = 2393，不是整千，但只有一次借位。</p>
    <p class="amber"><b>能凑整更好：1247 + 2353 = 3600</b></p>
  </div>
  <div>
    <div class="calc-row"><span>原式</span><b>8321 − 1286 − 1107</b><i>逐项减 2 次借位</i></div>
    <div class="calc-row" v-click.fade-in="2"><span>分组</span><b>8321 − 2393</b><i>只减 1 次</i></div>
    <div class="calc-row" v-click.fade-in="2"><span>结果</span><b>5928</b><i>尾数 28</i></div>
    <div class="calc-rule"></div>
    <div class="result small" v-click.fade-in="3">两项以上全是减号，先加后减</div>
  </div>
</div>

<div class="footnote">分组不是随便加：优先找能凑成整百、整千的组合，其次找尾数好算的组合。</div>

<!--
click 1：口诀先出，让学员知道「减号抱团」。
click 2：算出 2393，再减得 5928。
click 3：落到「先加后减」，为下一页基准数做铺垫。
-->

---
layout: default
class: paper
---

# 即学即练：分组相减

<div class="kicker">限时 40 秒，先写「减数和」，再写结果</div>

<div class="two-col">
  <div class="q-block">
    <div class="q">01　基础　7452 − 1368 − 2194</div>
    <ClickReveal answer="1368 + 2194 = 3562 → 7452 − 3562 = 3890" />
  </div>
  <div class="q-block">
    <div class="q">02　进阶　1.28 − 0.47 − 0.36（万亿）</div>
    <ClickReveal answer="0.47 + 0.36 = 0.83 → 1.28 − 0.83 = 0.45 万亿" />
  </div>
</div>

<div class="footnote">全是减号才能合并减数；出现加号时，加项、减项各自分组。</div>

<!--
只批「先加后减」这一步有没有写；直接逐项减的，回上一页。
-->

---
layout: default
class: paper
---

# 动作二：基准数法

<div class="kicker">四个数都接近 1000，就别硬算</div>

<div class="hook">1024 + 987 − 1156 − 842，硬加要几步？</div>

<div class="note-box">
  <div class="big-line" v-click.fade-in="1">1024 + 987 − 1156 − 842</div>
  <small v-click.fade-in="1">取基准 1000，只算每个数的偏移</small>
</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">写成偏移</div>
    <div class="calc-line" v-click.fade-in="2">+24　−13　−156　+158</div>
    <div class="calc-line" v-click.fade-in="2">1000 的基数两两抵消</div>
  </div>
  <div class="card pad">
    <div class="kicker">只加偏移</div>
    <div class="calc-line" v-click.fade-in="3">24 − 13 − 156 + 158 = 13</div>
    <div class="result small" v-click.fade-in="3">= 13</div>
  </div>
</div>

<div class="footnote">基准数适合 3 个以上、且都在同一量级（如 900–1200）的加减；偏移超过基准一半时，换分组更稳。</div>

<!--
click 1：先问「硬加要几步」，再给基准 1000 和偏移思路。
click 2：写出四个偏移，说明 1000 两两抵消。
click 3：只算偏移和，得 13；对比硬算 2011−1998，快在多步心算。
-->

---
layout: default
class: paper
---

# 即学即练：基准数法

<div class="kicker">限时 50 秒，先写偏移，再写结果</div>

<div class="two-col">
  <div class="q-block">
    <div class="q">01　基础　1315 + 968 − 1240 − 1027</div>
    <ClickReveal answer="偏移 +315 − 32 − 240 − 27 = +16 → 16" />
  </div>
  <div class="q-block">
    <div class="q">02　进阶　1.315 + 0.968 − 1.240 − 1.027（万亿）</div>
    <ClickReveal answer="偏移同上，结果 0.016 万亿（= 160 亿元）" />
  </div>
</div>

<div class="footnote">第 2 题小数位不同，先统一成三位小数再取偏移，别删零。</div>

<!--
先问「基准取多少」；取 1000 后，正负偏移要分两列写。
-->

---
layout: default
class: paper
---

# 动作三：尾数校验

<div class="hook">算完，你怎么确认没借错？</div>

<div class="kicker">只算末两位，10 秒验算</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">例：6382 − 1247 − 2358</div>
    <div class="calc-line" v-click.fade-in="1">末两位：82 − 47 − 58</div>
    <div class="calc-line" v-click.fade-in="1">= −23 → 77（借 1 位）</div>
    <div class="result small" v-click.fade-in="2">结果 2777，尾数 77 ✓</div>
  </div>
  <div class="card pad">
    <div class="kicker">例：8321 − 7194</div>
    <div class="calc-line" v-click.fade-in="3">末两位：21 − 94</div>
    <div class="calc-line" v-click.fade-in="3">= −73 → 27</div>
    <div class="result small" v-click.fade-in="4">结果 1127，尾数 27 ✓</div>
  </div>
</div>

<div class="footnote">尾数校验只能抓「末两位错」，抓不到量级错；量级要另看整数位。</div>

<!--
click 1：先问「怎么确认没借错」，再示范末两位相减。
click 2：对上台 2777，尾数 77。
click 3：第二例 21−94。
click 4：得 27，与 1127 对上；强调尾数只抓借位，不抓量级。
-->

---
layout: default
class: paper
---

# 即学即练：尾数校验

<div class="kicker">限时 30 秒，只算末两位，判断选项</div>

<div class="two-col">
  <div class="q-block">
    <div class="q">01　基础　9036 − 4187，尾数是多少？</div>
    <ClickReveal answer="36 − 87 = −51 → 尾数 49，结果 4849" />
  </div>
  <div class="q-block">
    <div class="q">02　进阶　5621 − 2847 − 1936，尾数是多少？</div>
    <ClickReveal answer="21 − 47 − 36 = −62 → 尾数 38，结果 838" />
  </div>
</div>

<div class="footnote">尾数只抓借位，抓不到量级；算出 838 后仍要回看千位是否合理。</div>

<!--
先盖住答案，只让报尾数；尾数对但量级错的，单独点出来。
-->

---
layout: default
class: paper
---

# 例题一：三项连减

<div class="hook">「其余」两个字，提示你要连减几个数？</div>

<div class="note-box light">
  <div class="big-line">某市 2023 年财政收入 638.2 亿元，其中基建 124.7 亿元、民生 235.8 亿元，其余为结余。结余多少？</div>
</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">列式</div>
    <div class="calc-line" v-click.fade-in="1">638.2 − 124.7 − 235.8</div>
    <div class="calc-line" v-click.fade-in="1">= 638.2 − (124.7 + 235.8)</div>
  </div>
  <div class="card pad">
    <div class="kicker">计算</div>
    <div class="calc-line" v-click.fade-in="2">124.7 + 235.8 = 360.5</div>
    <div class="calc-line" v-click.fade-in="3">638.2 − 360.5 = 277.7</div>
    <div class="result small" v-click.fade-in="3">= 277.7 亿元</div>
  </div>
</div>

<div class="footnote">先看选项：若选项是 277 / 278 / 279，保留一位小数就够；若只差 0.1，才需要精算。</div>

<!--
click 1：先问「其余要连减几个数」，列出原式并分组。
click 2：减数和 360.5。
click 3：结果 277.7 亿；顺便讲选项精度。
-->

---
layout: default
class: paper
---

# 即学即练：三项连减

<div class="kicker">限时 50 秒，三步都写：合群 → 减 → 校验</div>

<div class="two-col">
  <div class="q-block">
    <div class="q">01　基础　12580 − 3467 − 2895 − 1826</div>
    <ClickReveal answer="减数和 8188 → 12580 − 8188 = 4392（尾数 92）" />
  </div>
  <div class="q-block">
    <div class="q">02　进阶　1.258 − 0.347 − 0.290 − 0.183（万亿）</div>
    <ClickReveal answer="减数和 0.820 → 1.258 − 0.820 = 0.438 万亿" />
  </div>
</div>

<div class="footnote">两题是同一组数的整数版与小数版；小数版只挪小数点，方法不变。</div>

<!--
让学员先报「减数和」，超过 10 秒的，说明还在逐项减。
-->

---
layout: default
class: paper
---

# 例题二：混合加减

<div class="hook">四个季度，先加哪两个？</div>

<div class="note-box light">
  <div class="big-line">四季度营收 1024、987、1156、842 万元。Q1+Q2 比 Q3+Q4 多多少？</div>
</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">先分组</div>
    <div class="calc-line" v-click.fade-in="1">(1024 + 987) − (1156 + 842)</div>
    <div class="calc-line" v-click.fade-in="2">= 2011 − 1998</div>
  </div>
  <div class="card pad">
    <div class="kicker">再求差</div>
    <div class="calc-line" v-click.fade-in="3">2011 − 1998 = 13</div>
    <div class="result small" v-click.fade-in="3">= 13 万元</div>
    <div class="pill">基准法：整组取反</div>
  </div>
</div>

<div class="warn-box">基准数法要带全符号：Q3、Q4 是「减去整组」，偏移也要整组取反。</div>

<!--
click 1：先问「先加哪两个」，列出两组。
click 2：两组和 2011、1998。
click 3：差 13；再用 pill 提醒基准法容易漏掉整组取反。
-->

---
layout: default
class: paper
---

# 即学即练：混合加减

<div class="kicker">限时 50 秒，加项、减项各分一组</div>

<div class="two-col">
  <div class="q-block">
    <div class="q">01　基础　6382 − 1247 + 2358 − 1896</div>
    <ClickReveal answer="减项和 3143，加项和 2358 → 6382 + 2358 − 3143 = 5597" />
  </div>
  <div class="q-block">
    <div class="q">02　进阶　6.382 − 1.247 + 2.358 − 1.896（亿）</div>
    <ClickReveal answer="同结构，结果 5.597 亿（= 5597 万）" />
  </div>
</div>

<div class="footnote">第 2 题注意单位：5.597 亿等于 5597 万，选项常在这两个量级之间设陷阱。</div>

<!--
先问「先加哪两个」，再点答案；把加项减项混在一列的，停下来重分。
-->

---
layout: default
class: paper
---

# 差值比较：别硬减

<div class="hook">两个差，非要都算出来吗？</div>

<div class="note-box">
  <div class="big-line" v-click.fade-in="1">A − B 与 C − D 比大小 ⇔ 比 A + D 与 B + C</div>
  <small v-click.fade-in="1">把减法转成加法，只比两组和</small>
</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">左边：8321 − 7194</div>
    <div class="calc-line">8321 + 5028 = 13349</div>
    <div class="calc-line">7194 + 6152 = 13346</div>
  </div>
  <div class="card pad">
    <div class="kicker">右边：6152 − 5028</div>
    <div class="calc-line" v-click.fade-in="2">13349 &gt; 13346</div>
    <div class="result small" v-click.fade-in="3">左边大 3，选左</div>
  </div>
</div>

<div class="footnote">只在「两个差比大小」时用；题目要具体差值，仍然要算出来。</div>

<!--
click 1：先问「两个差都要算吗」，给出交叉相加的等价式。
click 2：算两组和，13349 与 13346。
click 3：左边大 3，避免算两次三位数减法。
-->

---
layout: default
class: paper
---

# 复合差：比重与增长率

<div class="hook">分母相同，还要分别算两个比重吗？</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">同分母：先减分子</div>
    <div class="calc-line" v-click.fade-in="1">125/480 − 118/480</div>
    <div class="calc-line" v-click.fade-in="1">= (125 − 118) / 480</div>
    <div class="result small" v-click.fade-in="2">= 7/480 ≈ 1.46 个百分点</div>
  </div>
  <div class="card pad">
    <div class="kicker">异分母：分别算再减</div>
    <div class="calc-line" v-click.fade-in="3">125/480 ≈ 26.04%</div>
    <div class="calc-line" v-click.fade-in="3">118/465 ≈ 25.38%</div>
    <div class="result small" v-click.fade-in="4">≈ 0.66 个百分点</div>
  </div>
</div>

<div class="footnote">比重差用「百分点」，不是「%」；增长率差同理，先看分母是否相同。</div>

<!--
click 1：先问「同分母还要分别算吗」，给出分子相减。
click 2：7/480 ≈ 1.46 个百分点。
click 3：异分母分别算两个比重。
click 4：相减得 0.66 个百分点，强调单位是百分点。
-->

---
layout: default
class: paper
---

# 量级与单位

<div class="hook">2.777 万亿，是多少亿元？</div>

<div class="two-col">
  <div class="card pad">
    <div class="kicker">先按整数算</div>
    <div class="calc-line">6.382 − 1.247 − 2.358</div>
    <div class="calc-line" v-click.fade-in="1">= 2.777 万亿</div>
    <div class="result small" v-click.fade-in="2">= 27770 亿元</div>
  </div>
  <div class="card pad">
    <div class="kicker">固定顺序</div>
    <div class="formula small" v-click.fade-in="3">整数 → 小数点 → 单位</div>
    <p class="muted">三步分开做，别一边减一边换单位。</p>
    <p class="amber"><b>万亿 → 亿：× 10000</b></p>
  </div>
</div>

<div class="warn-box">单位错位是最冤的失分：算对了 2.777，写成 2777 亿，整题照样零分。</div>

<!--
click 1：先问「2.777 万亿是多少亿」，算出 2.777 万亿。
click 2：换算 27770 亿元。
click 3：给固定顺序「整数 → 小数点 → 单位」，并强调单位错位最冤。
-->

---
layout: default
class: paper
---

# 五个高频错误

<div class="hook">你错的是算，还是符号？</div>

<table class="mini-table wide">
  <tr><th>错误</th><th>典型表现</th><th>修正</th></tr>
  <tr><td>逐项硬减</td><td>三项连减，借位两次</td><td>先加后减</td></tr>
  <tr><td>符号漏掉</td><td>混合加减把减项当加项</td><td>整组带符号</td></tr>
  <tr><td>分组拆错</td><td>加项和减项混在一组</td><td>同号才抱团</td></tr>
  <tr><td>不做校验</td><td>算完直接选，尾数不对</td><td>末两位验算</td></tr>
  <tr><td>单位错位</td><td>万亿当亿、亿当万</td><td>最后统一换单位</td></tr>
</table>

<div class="insight" v-click.fade-in="1">这五条里，四条是「式子先错」，只有一条是「算错」。先改式子，再练速度。</div>

<!--
click 1：先问「错在算还是符号」，再点出四条属式子错；让学员给自己的错题归因。
-->

---
layout: default
class: paper
---

# 四步决策：拿到题先做什么

<div class="hook">拿到题，第一眼该看什么？</div>

<div class="steps">
  <div class="step" v-click.fade-in="1"><span class="n">1</span><b>看选项</b><p>差几十还是差几百，决定算到哪一位</p></div>
  <div class="step" v-click.fade-in="2"><span class="n">2</span><b>分符号</b><p>加项一组、减项一组，整组带符号</p></div>
  <div class="step" v-click.fade-in="3"><span class="n">3</span><b>选动作</b><p>连减分组 / 同量级用基准 / 比大小转加法</p></div>
  <div class="step" v-click.fade-in="4"><span class="n">4</span><b>校尾数与量级</b><p>末两位对得上，单位再换</p></div>
</div>

<div class="note-box">顺序反了等于白算：先定精度，再分组，最后才校验。</div>

<!--
click 1：先看选项，决定精度。
click 2：分符号，加项减项各一组。
click 3：选动作，对应前三个方法。
click 4：校尾数与量级；点完再读 note 里的总口诀。
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
  <ClickReveal label="01　6382 − 1247 − 2358" answer="2777" />
  <ClickReveal label="02　1024 + 987 − 1156 − 842" answer="13" />
  <ClickReveal label="03　8321 − 7194" answer="1127" />
  <ClickReveal label="04　6152 − 5028" answer="1124" />
  <ClickReveal label="05　4573 − 1286 − 1107" answer="2180" />
  <ClickReveal label="06　1.37 − 0.42 − 0.38" answer="0.57" />
  <ClickReveal label="07　125/480 − 118/480" answer="1.46 个百分点" />
  <ClickReveal label="08　9.8 − 3.4 − 2.9 + 1.2" answer="4.7" />
</div>

<!--
批改重点：第 2 题是否用基准数；第 7 题是否先减分子；第 8 题符号是否带全。
-->

---
layout: default
class: paper
---

# 课堂练习 B：3 道实战

<div class="two-col wide-left">
  <div>
    <div class="q-block">
      <div class="q">01　某市 2023 年财政收入 638.2 亿元，基建支出 124.7 亿元、民生支出 235.8 亿元，其余为结余。结余多少？</div>
      <ClickReveal answer="638.2 − (124.7 + 235.8) = 277.7 亿元" />
    </div>
    <div class="q-block">
      <div class="q">02　四季度营收 1024、987、1156、842 万元，Q1+Q2 比 Q3+Q4 多多少？</div>
      <ClickReveal answer="(1024 + 987) − (1156 + 842) = 13 万元" />
    </div>
    <div class="q-block">
      <div class="q">03　甲 8321 万元、乙 7194 万元；丙 6152 万元、丁 5028 万元。甲乙差与丙丁差，哪个大？</div>
      <ClickReveal answer="比 A+D 与 B+C：8321+5028 &gt; 7194+6152，甲乙差大 3 万元" />
    </div>
  </div>
  <div class="tip-card">
    <div class="kicker">课堂要求</div>
    <p>每题第一行必须写：</p>
    <div class="formula small">分组 → 符号 → 校验</div>
    <p class="muted">没写的，即使答对也算未完成。</p>
    <p class="muted">第 3 题不要分别算两个差，用交叉相加。</p>
  </div>
</div>

<!--
参考答案：①277.7 亿元 ②13 万元 ③甲乙差大 3 万元。第 1 题先加两个支出项，第 3 题用 A+D 与 B+C 比较。
-->

---
layout: default
class: paper
---

# 随堂加练：随机生成

<div class="two-col wide-left">
  <div class="drill-card">
    <RandomDiff />
  </div>
  <div class="tip-card">
    <div class="kicker">怎么用</div>
    <p>每次点「换一题」，题目和答案都会重算。</p>
    <p class="muted">先心算，再点「显示答案」；连续 5 题全对，再回整组练习。</p>
    <p class="muted">三类题分别对应：分组连减、基准数、差值比较。</p>
  </div>
</div>

<!--
这个组件用于热身或控场，不计入正式成绩。可让学生轮流上来点。
-->

---
layout: cover
class: cover-dark
---

<div class="cover-mark small">−</div>

# 把这三句话带走

<div class="takeaways">
  <div class="takeaway"><b>先分组</b><span>连减合成一次减，混合加减同号抱团</span></div>
  <div class="takeaway"><b>再借基准</b><span>同量级取整千，只算偏移</span></div>
  <div class="takeaway"><b>最后校验</b><span>末两位验借位，单位最后换</span></div>
</div>

<div class="closing-line">先分组，再求差，最后校验。</div>
<div class="cover-foot">7 天训练：每天 10 分钟三项连减 + 10 道混合加减；第 7 天回看错题归因。</div>

<!--
收尾一句话：多项求差的速度来自「少减一次」，不是「减得快」。
-->
