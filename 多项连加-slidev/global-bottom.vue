<script setup lang="ts">
import { computed } from 'vue'
import { useNav } from '@slidev/client'

const nav = useNav()
const show = computed(() => nav.currentRoute.value.name === 'play' && !nav.isPrintMode.value)
</script>

<template>
  <div v-if="show" class="pdf-fab">
    <a href="#/export">导出 PDF</a>
  </div>
</template>

<style scoped>
.pdf-fab {
  position: absolute;
  right: 14px;
  bottom: 14px;
  z-index: 40;
  opacity: 0.45;
  transition: opacity 0.2s ease;
}

.pdf-fab:hover {
  opacity: 1;
}

.pdf-fab a {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: 6px 12px;
  border: 1px solid rgba(232, 163, 61, 0.55);
  border-radius: 999px;
  background: rgba(20, 33, 61, 0.82);
  color: #f3d9a4;
  font-family: "Noto Sans SC", system-ui, sans-serif;
  font-size: 12px;
  letter-spacing: 0.04em;
  text-decoration: none;
  cursor: pointer;
  backdrop-filter: blur(4px);
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.25);
}

.pdf-fab a:hover {
  background: rgba(232, 163, 61, 0.92);
  color: #14213d;
  border-color: rgba(232, 163, 61, 0.92);
}

@media print {
  .pdf-fab {
    display: none !important;
  }
}
</style>
