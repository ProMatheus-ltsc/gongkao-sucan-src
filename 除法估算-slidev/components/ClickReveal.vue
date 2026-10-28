<script setup>
import { ref } from 'vue'

defineProps({
  answer: { type: String, required: true },
  label: { type: String, default: '' },
})

const open = ref(false)
</script>

<template>
  <button class="click-reveal" :class="{ open }" @click="open = !open">
    <span v-if="$slots.default || label" class="q"><slot>{{ label }}</slot></span>
    <span v-if="open" class="a">{{ answer }}</span>
    <span v-else class="hint">点击揭晓答案</span>
  </button>
</template>

<style scoped>
.click-reveal {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 0.25rem;
  width: 100%;
  min-height: 3rem;
  padding: 0.55rem 0.7rem;
  border: 1px dashed #d8b06a;
  border-radius: 8px;
  background: #fffdf7;
  cursor: pointer;
  text-align: left;
  transition: all 0.18s ease;
  font-family: inherit;
}

.click-reveal:hover {
  border-color: #e8a33d;
  background: #fdf4e2;
}

.click-reveal.open {
  background: #14213d;
  border: 1px solid #14213d;
}

.q {
  font-weight: 600;
  color: #1e2430;
  font-size: 0.9rem;
}

.hint {
  font-size: 0.62rem;
  color: #a96f14;
  letter-spacing: 0.06em;
}

.a {
  font-family: "Noto Serif SC", "Songti SC", serif;
  color: #e8a33d;
  font-size: 1.05rem;
  font-weight: 700;
}

.click-reveal.open .q {
  color: #c6d0e4;
  font-size: 0.72rem;
}
</style>
