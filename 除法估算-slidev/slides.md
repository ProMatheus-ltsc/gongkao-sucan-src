---
theme: default
title: 除法估算 · 资料分析速算课
info: |
  面向大学生与上班族备考者的资料分析除法估算课
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

<div class="cover-mark">÷</div>

# 除法估算

## 资料分析的另一半：从「会除」到「除得准」

<div class="cover-meta">
资料分析速算课 ｜ 19 页 ｜ 含课堂互动
</div>

<div class="cover-foot">面向大学生 / 上班族备考者　·　主讲：____________</div>

<!--
开场先做 3846÷1.27，限时 15 秒。多数人会列竖式或除到小数点后两位。由此引出：除法不是算得越准越好，而是先看选项、再定精度。
-->

---
layout: default
class: paper
---

# 目录

<div class="toc">
  <div class="toc-row"><span class="toc-num">01</span><div><b>除法为什么最容易丢分</b><small>六种形态，共用一条主线</small></div></div>
  <div class="toc-row"><span class="toc-num">02</span><div><b>三个核心动作</b><small>选项定精度 / 截位直除 / 化除为乘</small></div></div>
  <div class="toc-row"><span class="toc-num">03</span><div><b>四类高频列式</b><small>基期 / 增长量 / 比重 / 平均数</small></div></div>
  <div class="toc-row"><span class="toc-num">04</span><div><b>分数比较与陷阱</b><small>交叉相乘、量级、单位、方向</small></div></div>
  <div class="toc-row"><span class="toc-num">05</span><div><b>课堂训练</b><small>8 题口算 + 3 题实战 + 随机加练</small></div></div>
</div>

<!--
目录 30 秒。强调除法不是独立模块，它藏在基期、比重、平均数、倍数里。
-->

---
layout: default
class: paper
---

# 除法是资料分析的「隐形失分点」

<div class="hook">上次除法错，是算错，还是式子本身就列错了？</div>

<div class="cards">
  <div class="card"><div class="stat">6 类</div><div class="cap">基期 / 增长量 / 比重 / 平均数 / 倍数 / 增长率</div></div>
  <div class="card"><div class="stat">35–45 s</div><div class="cap">单题计算预算</div></div>
  <div class="card"><div class="stat">1 条</div><div class="cap">主线：先定精度，再动笔</div></div>
</div>

<div class="insight" v-click.fade-in="1">乘法错，多半是「算错」；除法错，多半是「分母拿错」或「方向反了」——这两种错，算得再快也没用。</div>

<div class="footnote">典型场景：题目问基期，却拿现期当分母；题目写「下降」，却用了 1 + r。</div>

<!--
click 1：先问「上次错是算错还是式子错」，停 3 秒；再点出「分母拿错 / 方向反了」，顺带读脚注两个场景。
-->

---
layout: default
class: paper
---

# 六种形态，其实是同一个除法

<div class="hook">这六种，分母各是谁？</div>

<table class="mini-table wide">
  <tr><th>形态</th><th>公式</th><th>分母是什么</th></tr>
  <tr><td>基期量</td><td>现期 ÷ (1 + r)</td><td>1 + 增长率</td></tr>
  <tr><td>增长量</td><td>现期 × r ÷ (1 + r)</td><td>1 + 增长率</td></tr>
  <tr><td>比重</td><td>部分 ÷ 整体</td><td>整体量</td></tr>
  <tr><td>平均数</td><td>总量 ÷ 个数</td><td>个数</td></tr>
  <tr><td>倍数</td><td>A ÷ B</td><td>基准量 B</td></tr>
  <tr><td>增长率</td><td>(现期 − 基期) ÷ 基期</td><td><b>基期</b>，不是现期</td></tr>
</table>

<div class="insight" v-click.fade-in="1">先把「分母是谁」写出来，再算。这一步只花 3 秒，能挡掉一半的错题。</div>

<!--
click 1：先问「分母各是谁」，让学员逐行答；重点砸最后一行。然后出现结论「先写分母，再算」。
-->

---
layout: default
class: paper
---

# 第一原则：选项差距决定精度

<div class="hook">选项差 4.6%，分母取两位还是三位？</div>

<table class="mini-table wide">
  <tr><th>选项差距</th><th>分母取几位</th><th>做法</th></tr>
  <tr><td>&gt; 5%</td><td>两位</td><td>1.27 → 1.3，直接除</td></tr>
  <tr><td>1%–5%</td><td>三位</td><td>1.27 → 1.27，保留三位</td></tr>
  <tr><td>&lt; 1%</td><td>不截</td><td>精算，或化除为乘</td></tr>
</table>

<div class="note-box light" v-click.fade-in="1">
  <div class="big-line">3846 ÷ 1.27　选项：2900 / 3030 / 3170</div>
  <small v-click.fade-in="2">选项差距约 4.6% → 分母取三位 → 3028，选 3030。</small>
</div>

<div class="footnote" v-click.fade-in="2">如果选项是 2900 / 3000 / 3100，差距 3.3%，仍然取三位；取两位会得到 2958，容易误选 3000 或 2900。</div>

<!--
click 1：先问「差 4.6%，取几位」，再亮出题目和选项，停 3 秒让他们自己判。
click 2：给答案 3028→3030，用脚注反例说明取两位会掉进哪个坑。
-->

---
layout: default
class: paper
---

# 动作一：截位直除

<div class="kicker">分子取三位，分母按精度截位</div>

<div class="hook">4573 ÷ 1.18，分母截两位还是三位？</div>

<div class="two-col wide-right">
  <div class="card pad">
    <div class="kicker">口诀</div>
    <div class="formula small" v-click.fade-in="1">先看选项 → 再截分母 → 最后直除</div>
    <p class="muted" v-click.fade-in="1">分子一般取前三位，第四位四舍五入；分母按上页规则取两位或三位。</p>
    <p class="amber" v-click.fade-in="1"><b>能整除就整除，不能整除就估到选项量级</b></p>
  </div>
  <div>
    <div class="calc-row" v-click.fade-in="2"><span>原式</span><b>4573 ÷ 1.18</b><i>真值 3875</i></div>
    <div class="calc-row" v-click.fade-in="3"><span>分母两位</span><b>4570 ÷ 1.2 = 3808</b><i>误差 −1.7%</i></div>
    <div class="calc-row" v-click.fade-in="4"><span>分母三位</span><b>4570 ÷ 1.18 = 3873</b><i>误差 −0.05%</i></div>
    <div class="calc-rule" v-click.fade-in="4"></div>
    <div class="result small" v-click.fade-in="4">选项差距 &gt; 5% 用第一行，否则用第二行</div>
  </div>
</div>

<div class="warn-box" v-click.fade-in="4">截位不是「随便舍掉」：分母截得越狠，结果偏得越多；先看选项，再决定截几位。</div>

<!--
click 1：先给口诀「看选项 → 截分母 → 直除」，强调顺序不能换。
click 2：亮出原式和真值 3875，先不让学生看见两种截法。
click 3：分母截两位，结果 3808，误差 −1.7%，问「这误差能接受吗」。
click 4：分母截三位 3873，误差只剩 −0.05%；收口「按选项差距选行」。
-->

---
layout: default
class: paper
---

# 动作二：化除为乘

<div class="hook">1 ÷ 1.08，能不能不除，改成乘？</div>

<div class="kicker">把 1/(1+r) 变成一次乘法</div>

<div class="note-box" v-click.fade-in="1">
  <div class="big-line">1 ÷ (1 + r) ≈ 1 − r + r²　｜　1 ÷ (1 − r) ≈ 1 + r + r²</div>
</div>

<div class="two-col">
  <div class="card pad" v-click.fade-in="2">
    <div class="kicker">增长 8%</div>
    <div class="calc-line">1 ÷ 1.08 ≈ 1 − 0.08 + 0.0064</div>
    <div class="calc-line">= 0.9264</div>
    <div class="result small">460 ÷ 1.08 ≈ 426</div>
    <div class="pill">真值 425.9</div>
  </div>
  <div class="card pad" v-click.fade-in="3">
    <div class="kicker">下降 8%</div>
    <div class="calc-line">1 ÷ 0.92 ≈ 1 + 0.08 + 0.0064</div>
    <div class="calc-line">= 1.0864</div>
    <div class="result small">460 ÷ 0.92 = 500</div>
    <div class="pill">下降题直接除更稳</div>
  </div>
</div>

<div class="footnote" v-click.fade-in="4">r &lt; 5% 时，一阶 1 − r 就够；r 在 5%–10% 加 r²；r &gt; 10% 误差明显变大，回到直除。</div>

<!--
click 1：先问「能不能不除」，再给两条近似式，解释 r² 是修正项。
click 2：增长 8%：1.08 的倒数是 0.9264，460 直接乘。
click 3：下降 8%：0.92 的倒数是 1.0864；但这类题直除更快，别硬套。
click 4：给使用边界，r > 10% 回到直除，防止学生滥用。
-->

---
layout: default
class: paper
---

# 动作三：百化分

<div class="hook">12.5% 是几分之一？换成除法是不是更快？</div>

<div class="kicker">看到这些分母，直接除</div>

<table class="frac-table">
  <tr><td>50% = 1/2</td><td>33.3% = 1/3</td><td>25% = 1/4</td><td>20% = 1/5</td></tr>
  <tr><td>16.7% = 1/6</td><td>14.3% = 1/7</td><td>12.5% = 1/8</td><td>11.1% = 1/9</td></tr>
  <tr><td>9.1% = 1/11</td><td>8.3% = 1/12</td><td>6.25% = 1/16</td><td>5% = 1/20</td></tr>
</table>

<div class="note-box light" v-click.fade-in="1">
  <div class="big-line">356 × 12.5%　=　356 ÷ 8　=　44.5</div>
  <small>428 × 14.3% = 428 ÷ 7 ≈ 61.1　｜　396 × 11.1% = 396 ÷ 9 = 44</small>
</div>

<div class="insight" v-click.fade-in="2">除法里看到分母是 7、8、9、12，优先想分数；看到 6.3%、9.1%、14.3%，先找最接近的 1/n。</div>

<!--
click 1：先问「12.5% 是几分之一」，再给 356÷8 = 44.5，让学生看到除法比乘法少一步。
click 2：补两条同类，收口「看到 7/8/9/12 想分数」；提醒 6.3% 是 1/16，不是 1/15。
-->

---
layout: default
class: paper
---

# 分数比较：别通分，先看差

<div class="hook">47/123 和 51/134，谁大？凭分子能判断吗？</div>

<div class="cards">
  <div class="card pad" v-click.fade-in="1">
    <div class="kicker">① 直除</div>
    <div class="formula small">算两位小数</div>
    <p class="muted">最快，适合选项差距大。</p>
  </div>
  <div class="card pad" v-click.fade-in="1">
    <div class="kicker">② 交叉相乘</div>
    <div class="formula small">a/b 与 c/d：比 ad 和 bc</div>
    <p class="muted">分母同号时最稳。</p>
  </div>
  <div class="card pad" v-click.fade-in="1">
    <div class="kicker">③ 差分法</div>
    <div class="formula small">分子差 ÷ 分母差</div>
    <p class="muted">两个分数非常接近时用。</p>
  </div>
</div>

<div class="note-box light" v-click.fade-in="2">
  <div class="big-line">47/123 与 51/134：47×134 = 6298，51×123 = 6273</div>
  <small>6298 &gt; 6273 → 47/123 更大。差很小，别凭「分子大」下结论。</small>
</div>

<div class="footnote" v-click.fade-in="3">差分法验证：分子差 4、分母差 11，4/11 ≈ 0.364 &lt; 0.382，所以 51/134 更小。</div>

<!--
click 1：先问「凭分子能判断吗」，再给三种方法，强调交叉相乘最稳。
click 2：带算 47×134 与 51×123，让「分子大反而更小」自己显现。
click 3：用差分法复核；提醒交叉相乘只适用于分母同号。
-->

---
layout: default
class: paper
---

# 高频形态一：基期量

<div class="hook">增长和下降，分母差在哪一步？</div>

<div class="two-col">
  <div class="card pad" v-click.fade-in="1">
    <div class="kicker">公式</div>
    <div class="formula">基期 = 现期 ÷ (1 + r)</div>
    <p>增长用 <b>1 + r</b>，下降用 <b>1 − r</b>。</p>
    <p class="amber"><b>先写 r 的符号，再写分母</b></p>
  </div>
  <div class="card pad" v-click.fade-in="2">
    <div class="kicker">例：1.37 万亿，同比增长 8%</div>
    <div class="calc-line">1.37 ÷ 1.08 ≈ 1.37 × 0.926</div>
    <div class="calc-line">≈ 1.2685 万亿</div>
    <div class="result small">= 12685 亿元</div>
  </div>
</div>

<div class="warn-box" v-click.fade-in="3">下降 8% 时，分母是 0.92，不是 1.08。460 ÷ 1.08 ≈ 426 是错的，正确是 460 ÷ 0.92 = 500。</div>

<!--
click 1：先问「增长和下降分母差在哪」，再给公式；强调先写 r 的符号。
click 2：增长 8% 的例子，用化除为乘 1.37×0.926，顺带复用量级换算。
click 3：用下降 8% 的反例收口，这是最高频错因。
-->

---
layout: default
class: paper
---

# 高频形态二：增长量

<div class="hook">现期 × r，算出来的是增长量吗？</div>

<div class="kicker">先乘后除，别用现期 × r 代替</div>

<div class="formula big" v-click.fade-in="1">增长量 = 现期 × r ÷ (1 + r)</div>

<div class="two-col">
  <div class="card pad" v-click.fade-in="2">
    <div class="kicker">例：现期 1.37 万亿，增长 8%</div>
    <div class="calc-line">1.37 × 0.08 = 0.1096</div>
    <div class="calc-line">0.1096 ÷ 1.08 ≈ 0.1015</div>
    <div class="result small">≈ 1015 亿元</div>
  </div>
  <div class="card pad" v-click.fade-in="3">
    <div class="kicker">近似</div>
    <div class="calc-line">现期 × r = 1096 亿元</div>
    <div class="calc-line">高估约 8%</div>
    <p class="muted">选项差距大时可用，差距小必须除。</p>
  </div>
</div>

<div class="footnote" v-click.fade-in="4">增长量 = 现期 − 基期，也可以先算基期再减；两条路选计算量小的那条。</div>

<!--
click 1：先问「现期×r 是不是增长量」，再给公式，指出分母必须是 1+r。
click 2：带算 1.37×0.08 再除 1.08，落到 1015 亿元。
click 3：给近似现期×r=1096，说明高估 8%，只在选项差距大时能用。
click 4：补第二条路「现期−基期」，让学生按计算量选路。
-->

---
layout: default
class: paper
---

# 高频形态三：比重与平均数

<div class="hook">分母是整体，还是部分？是总量，还是个数？</div>

<div class="two-col">
  <div class="card pad" v-click.fade-in="1">
    <div class="kicker">比重</div>
    <div class="formula">比重 = 部分 ÷ 整体</div>
    <div class="calc-line">125 ÷ 480 = 0.2604</div>
    <div class="result small">= 26.0%</div>
    <p class="muted">分母是整体量，不是部分。</p>
  </div>
  <div class="card pad" v-click.fade-in="2">
    <div class="kicker">平均数</div>
    <div class="formula">平均数 = 总量 ÷ 个数</div>
    <div class="calc-line">3846 ÷ 12 = 320.5</div>
    <div class="result small">= 320.5</div>
    <p class="muted">分母是个数，注意单位是「个」还是「万人」。</p>
  </div>
</div>

<div class="insight" v-click.fade-in="3">比重的变化用「百分点」，不是「%」。25% → 26% 是上升 1 个百分点，不是上升 1%。</div>

<!--
click 1：先问「分母是整体还是部分」，再给比重公式和 125÷480。
click 2：平均数换分母为「个数」，强调单位可能藏在「万人」里。
click 3：收口「百分点 vs %」，为复合考点留一个钩子。
-->

---
layout: default
class: paper
---

# 量级与单位：除法最容易错在这里

<div class="hook">1.2685 万亿，写成「亿元」是多少？</div>

<div class="two-col">
  <div class="card pad" v-click.fade-in="1">
    <div class="kicker">万亿 → 亿</div>
    <div class="calc-line">1.37 万亿 ÷ 1.08</div>
    <div class="calc-line">= 1.2685 万亿</div>
    <div class="calc-line">= 12685 亿元</div>
    <div class="result small">× 10000</div>
  </div>
  <div class="card pad" v-click.fade-in="2">
    <div class="kicker">亿 → 万</div>
    <div class="calc-line">12685 亿元</div>
    <div class="calc-line">= 126850000 万元</div>
    <div class="result small">× 10000</div>
  </div>
</div>

<div class="note-box" v-click.fade-in="3">固定顺序：<b>先按整数算 → 再点小数点 → 最后换单位</b>。三步不要混在一起做。</div>

<div class="footnote" v-click.fade-in="4">材料给「亿元」、题干问「万元」，答案要乘 10000；反过来要除 10000。</div>

<!--
click 1：先问「1.2685 万亿是多少亿」，再给第一层换算 ×10000。
click 2：再换一层到「万元」，让两次 ×10000 看得见。
click 3：给固定顺序，禁止边算边换单位。
click 4：用脚注收口「亿元→万元」，提醒反向要除。
-->

---
layout: default
class: paper
---

# 五个高频错误

<div class="hook">你的错题，能归到这五类里的哪一类？</div>

<table class="mini-table wide" v-click.fade-in="1">
  <tr><th>错误</th><th>典型表现</th><th>修正</th></tr>
  <tr><td>分母拿错</td><td>增长率用了现期作分母</td><td>先写「分母是谁」</td></tr>
  <tr><td>方向反了</td><td>下降题用了 1 + r</td><td>先写 r 的负号</td></tr>
  <tr><td>截位过度</td><td>选项差 2% 还只截两位</td><td>按选项差距定精度</td></tr>
  <tr><td>单位错位</td><td>万亿当亿、亿当万</td><td>先算数，再换单位</td></tr>
  <tr><td>比较看半边</td><td>只看分子大就判大</td><td>交叉相乘或直除</td></tr>
</table>

<div class="insight" v-click.fade-in="2">这五条对应你错题本里的绝大多数除法题：不是不会算，是「式子先错了」。</div>

<!--
click 1：先问「你的错题属于哪类」，再亮表，逐行让学员认领。
click 2：收口「式子先错」；归不了类的，才是真不会。
-->

---
layout: default
class: paper
---

# 四步决策：拿到题先做什么

<div class="hook">拿到一道除法题，第一步做什么？</div>

<div class="steps">
  <div class="step" v-click.fade-in="1"><span class="n">1</span><b>看选项</b><p>差距 &gt;5% / 1–5% / &lt;1%</p></div>
  <div class="step" v-click.fade-in="2"><span class="n">2</span><b>定分母</b><p>基期、整体、个数、基期</p></div>
  <div class="step" v-click.fade-in="3"><span class="n">3</span><b>选方法</b><p>截位 / 化乘 / 百化分</p></div>
  <div class="step" v-click.fade-in="4"><span class="n">4</span><b>校量级</b><p>万亿、亿、万、%</p></div>
</div>

<div class="note-box light" v-click.fade-in="4">
  <div class="big-line">先定精度，再定分母，最后才按计算器</div>
  <small>顺序反了，算得越快错得越远。</small>
</div>

<div class="footnote">课堂口令：<b>选项 → 分母 → 方法 → 量级</b>，四步做完再动笔。</div>

<!--
click 1：先问「第一步做什么」，再亮「看选项」，多数人会答「列式」。
click 2：第二步定分母，回扣六种形态。
click 3：第三步选方法，回扣三个动作。
click 4：第四步校量级，并给出总口诀；顺序反了等于白算。
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
  <ClickReveal label="01　6382 ÷ 1.24" answer="5147" />
  <ClickReveal label="02　4573 ÷ 1.18" answer="3875" />
  <ClickReveal label="03　356 ÷ 8" answer="44.5" />
  <ClickReveal label="04　460 ÷ 0.92" answer="500" />
  <ClickReveal label="05　125 ÷ 480" answer="26.0%" />
  <ClickReveal label="06　3846 ÷ 12" answer="320.5" />
  <ClickReveal label="07　47/123 与 51/134" answer="47/123 更大" />
  <ClickReveal label="08　1.37 ÷ 1.08" answer="1.2685" />
</div>

<!--
批改重点：看谁还在列竖式、谁把第 4 题做成 460÷1.08。计时器在右上角。
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
      <div class="q">02　某产品 2023 年产量 2.4 万吨，同比增长 12%，增长量约为多少？</div>
      <ClickReveal answer="2.4 × 0.12 ÷ 1.12 ≈ 0.2571 万吨 = 2571 吨" />
    </div>
    <div class="q-block">
      <div class="q">03　某地GDP总量 4800 亿元，其中第三产业 1250 亿元，比重约为多少？</div>
      <ClickReveal answer="1250 ÷ 4800 ≈ 26.0%" />
    </div>
  </div>
  <div class="tip-card">
    <div class="kicker">课堂要求</div>
    <p>每题第一行必须写：</p>
    <div class="formula small">选项差 → 分母 → 精度</div>
    <p class="muted">没写的，即使答对也算未完成。</p>
    <p class="muted">第 2 题注意：增长量的分母仍是 1.12。</p>
  </div>
</div>

<!--
参考答案：①1.2685 万亿 ②2571 吨 ③26.0%。第 3 题分子分母同时缩小 10 倍，结果不变。
-->

---
layout: default
class: paper
---

# 随堂加练：随机生成

<div class="two-col wide-left">
  <div class="drill-card">
    <RandomDivision />
  </div>
  <div class="tip-card">
    <div class="kicker">怎么用</div>
    <p>每次点「换一题」，题目和答案都会重算。</p>
    <p class="muted">先心算，再点「显示答案」；连续 5 题全对，再回整组练习。</p>
    <p class="muted">三类题分别对应：基期量、比重、倍数。</p>
  </div>
</div>

<!--
这个组件用于热身或控场，不计入正式成绩。可让学生轮流上来点。
-->

---
layout: cover
class: cover-dark
---

<div class="cover-mark small">÷</div>

# 把这三句话带走

<div class="takeaways">
  <div class="takeaway"><b>选项定精度</b><span>差距 &gt;5% 截两位，1–5% 截三位，&lt;1% 精算</span></div>
  <div class="takeaway"><b>先定分母</b><span>基期 1+r｜比重整体｜平均数个数</span></div>
  <div class="takeaway"><b>能乘就不除</b><span>1/(1+r) ≈ 1−r+r²；12.5% = 1/8</span></div>
</div>

<div class="closing-line">先定精度，再定分母，最后才动笔。</div>
<div class="cover-foot">7 天训练：每天 10 分钟截位直除 + 10 道基期/比重；第 7 天回看错题归因。</div>

<!--
收尾一句话：除法的速度来自「少算」，不是「算得快」。
-->
