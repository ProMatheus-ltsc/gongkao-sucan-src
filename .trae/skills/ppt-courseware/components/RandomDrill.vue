<script setup>
import { ref } from 'vue'

const typeLabel = ref('')
const expr = ref('')
const answer = ref('')
const showAnswer = ref(false)

const rand = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min

function next() {
  showAnswer.value = false
  const kind = rand(0, 2)

  if (kind === 0) {
    const a = rand(12, 99)
    const b = rand(12, 99)
    typeLabel.value = '拆分 · 两位数乘法'
    expr.value = `${a} × ${b}`
    answer.value = String(a * b)
  } else if (kind === 1) {
    const n = rand(11, 30)
    typeLabel.value = '平方 · 速算'
    expr.value = `${n}²`
    answer.value = String(n * n)
  } else {
    let a, b, c, d
    do {
      a = rand(600, 999)
      b = rand(100, 250)
      c = rand(100, 250)
      d = rand(50, 200)
    } while (a - b - c - d < 50)
    typeLabel.value = '凑整 · 多项求差'
    expr.value = `${a} − ${b} − ${c} − ${d}`
    answer.value = String(a - b - c - d)
  }
}

next()
</script>

<template>
  <div class="rd">
    <div class="tag">{{ typeLabel }}</div>
    <div class="expr">{{ expr }}</div>
    <div v-if="showAnswer" class="ans">= {{ answer }}</div>
    <div v-else class="hidden-ans">答案已隐藏</div>
    <div class="actions">
      <button @click="next">换一题</button>
      <button class="primary" @click="showAnswer = !showAnswer">
        {{ showAnswer ? '隐藏答案' : '显示答案' }}
      </button>
    </div>
  </div>
</template>

<style scoped>
.rd {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 0.45rem;
}

.tag {
  font-size: 0.62rem;
  letter-spacing: 0.1em;
  color: #a96f14;
  font-weight: 700;
}

.expr {
  font-family: "Noto Serif SC", "Songti SC", serif;
  font-size: 2rem;
  font-weight: 700;
  color: #14213d;
  min-height: 3.1rem;
  display: flex;
  align-items: center;
}

.ans {
  font-family: "Noto Serif SC", "Songti SC", serif;
  font-size: 1.5rem;
  font-weight: 700;
  color: #e8a33d;
  min-height: 2.2rem;
}

.hidden-ans {
  font-size: 0.7rem;
  color: #b8b2a3;
  min-height: 2.2rem;
  display: flex;
  align-items: center;
}

.actions {
  display: flex;
  gap: 0.45rem;
}

button {
  padding: 0.35rem 0.8rem;
  border: 1px solid #dcd5c6;
  border-radius: 5px;
  background: #fff;
  color: #1e2430;
  font-size: 0.72rem;
  cursor: pointer;
  font-family: inherit;
}

button.primary {
  background: #14213d;
  color: #fff;
  border-color: #14213d;
}
</style>
