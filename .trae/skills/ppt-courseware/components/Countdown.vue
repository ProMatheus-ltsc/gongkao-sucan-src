<script setup>
import { computed, onUnmounted, ref } from 'vue'

const props = defineProps({
  seconds: { type: Number, default: 90 },
})

const remaining = ref(props.seconds)
const running = ref(false)
let timer = null

const mm = computed(() => String(Math.floor(remaining.value / 60)).padStart(2, '0'))
const ss = computed(() => String(remaining.value % 60).padStart(2, '0'))
const pct = computed(() => (remaining.value / props.seconds) * 100)
const warn = computed(() => remaining.value <= 10 && remaining.value > 0)
const done = computed(() => remaining.value === 0)

function tick() {
  if (remaining.value <= 1) {
    remaining.value = 0
    running.value = false
    clearInterval(timer)
    timer = null
    return
  }
  remaining.value -= 1
}

function toggle() {
  if (done.value) reset()
  running.value = !running.value
  if (running.value) {
    timer = setInterval(tick, 1000)
  } else {
    clearInterval(timer)
    timer = null
  }
}

function reset() {
  clearInterval(timer)
  timer = null
  running.value = false
  remaining.value = props.seconds
}

onUnmounted(() => clearInterval(timer))
</script>

<template>
  <div class="cd" :class="{ warn, done }">
    <div class="clock">{{ mm }}:{{ ss }}</div>
    <div class="track"><div class="fill" :style="{ width: pct + '%' }" /></div>
    <div class="btns">
      <button @click="toggle">{{ done ? '再来' : running ? '暂停' : '开始' }}</button>
      <button class="ghost" @click="reset">重置</button>
    </div>
  </div>
</template>

<style scoped>
.cd {
  min-width: 8.6rem;
  padding: 0.4rem 0.6rem 0.45rem;
  border: 1px solid #dcd5c6;
  border-radius: 8px;
  background: #fff;
}

.clock {
  font-family: "Noto Serif SC", "Songti SC", serif;
  font-size: 1.55rem;
  font-weight: 700;
  color: #14213d;
  text-align: center;
  line-height: 1.1;
  font-variant-numeric: tabular-nums;
}

.warn .clock { color: #b24a3a; }

.track {
  height: 3px;
  background: #ebe6da;
  border-radius: 99px;
  margin: 0.3rem 0;
  overflow: hidden;
}

.fill {
  height: 100%;
  background: #e8a33d;
  transition: width 0.9s linear;
}

.warn .fill { background: #b24a3a; }

.btns {
  display: flex;
  gap: 0.3rem;
}

button {
  flex: 1;
  font-size: 0.62rem;
  padding: 0.2rem 0;
  border: none;
  border-radius: 4px;
  background: #14213d;
  color: #fff;
  cursor: pointer;
  font-family: inherit;
}

button.ghost {
  background: #f1ede3;
  color: #6e7686;
}
</style>
