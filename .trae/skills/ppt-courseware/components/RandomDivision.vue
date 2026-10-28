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
    const base = rand(500, 9800)
    const r = rand(5, 20)
    typeLabel.value = '基期量 · 现期 ÷ (1 + r)'
    expr.value = `${base} ÷ (1 + ${r}%)`
    answer.value = (base / (1 + r / 100)).toFixed(1)
  } else if (kind === 1) {
    const part = rand(80, 480)
    const total = rand(part + 80, 1200)
    typeLabel.value = '比重 · 部分 ÷ 整体'
    expr.value = `${part} ÷ ${total} × 100%`
    answer.value = `${((part / total) * 100).toFixed(1)}%`
  } else {
    const a = rand(120, 980)
    const b = rand(80, 490)
    typeLabel.value = '倍数 · A ÷ B'
    expr.value = `${a} ÷ ${b}`
    answer.value = (a / b).toFixed(2)
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
  font-size: 1.75rem;
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
