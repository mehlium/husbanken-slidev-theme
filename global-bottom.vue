<script setup>
import logoUrl from "./images/husbanken-logo-hoved.svg";
import bgImage from "./images/bg-2.png";
import { computed } from "vue";
import {
  onSlideEnter,
  onSlideLeave,
  useDarkMode,
  useIsSlideActive,
  useNav,
  useSlideContext,
} from "@slidev/client";

const { currentPage, currentLayout, currentSlideRoute } = useNav();

const { $slidev } = useSlideContext();

// Check if current slide is intro or cover layout
const isIntroOrCover = computed(() => {
  console.log(currentPage.value);
  console.log(currentLayout);
  const currentNo = $slidev.nav.currentNo;
  const slide = $slidev.nav.currentSlide?.value;
  const layout = slide?.frontmatter?.layout || slide?.meta?.layout;

  console.log(currentNo);

  return currentPage.value === 1 || layout === "intro" || layout === "cover";
});
</script>

<template>
  <div
    v-if="isIntroOrCover"
    class="absolute inset-0 pointer-events-none"
    :style="{
      background: `url('${bgImage}') center / cover no-repeat`,
    }"
  />
  <img
    v-if="!isIntroOrCover"
    :src="logoUrl"
    alt="Husbanken"
    class="absolute bottom-4 left-4 h-6 opacity-80 z-10"
  />
</template>
