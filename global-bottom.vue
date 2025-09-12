<script setup>
import logoUrl from "./images/husbanken-logo-hoved.svg";
import { computed } from "vue";
import { useSlideContext } from "@slidev/client";

const { $slidev } = useSlideContext();

// Check if current slide is intro or cover layout
const isIntroOrCover = computed(() => {
  const layout = $slidev.nav.currentSlide?.value?.meta?.layout;
  return (
    layout === "intro" || layout === "cover" || $slidev.nav.currentNo === 1
  );
});
</script>

<template>
  <img
    v-if="!isIntroOrCover"
    :src="logoUrl"
    alt="Husbanken"
    class="absolute bottom-4 left-4 h-6 opacity-80 z-10"
  />
</template>
