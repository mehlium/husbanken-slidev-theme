<script setup>
import logoUrl from "./images/husbanken-logo-hoved.svg";
import bgImage from "./images/bg-2.png";
import bgImagePixelated from "./images/bg-pixelated.png";
import bgCyber from "./images/bg-cyber-2.jpg";
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
  const currentNo = $slidev.nav.currentNo;
  const slide = $slidev.nav.currentSlide?.value;
  const layout = slide?.frontmatter?.layout || slide?.meta?.layout;
  return currentPage.value === 1 || layout === "intro" || layout === "cover";
});

// Get background image from config, default to 'default'
const backgroundImage = computed(() => {
  return $slidev.configs.backgroundImage || 'default';
});

// Compute which background image to use based on config
const selectedBgImage = computed(() => {
  switch (backgroundImage.value) {
    case 'pixelated':
      return bgImagePixelated;
    case 'punk':
      return bgCyber;
    case 'default':
    default:
      return bgImage;
  }
});

// Show logo on cover/intro only for pixelated and punk themes
const showLogoOnCover = computed(() => {
  return backgroundImage.value === 'pixelated' || backgroundImage.value === 'punk';
});
</script>

<template>
  <div
    v-if="isIntroOrCover"
    class="absolute inset-0 pointer-events-none"
    :style="{
      background: `url('${selectedBgImage}') center / cover no-repeat`,
    }"
  >
  <img
    v-if="showLogoOnCover"
    :src="logoUrl"
    alt="Husbanken"
    class="absolute top-48 left-12 h-12"
  />
  </div>
  <img
    v-if="!isIntroOrCover"
    :src="logoUrl"
    alt="Husbanken"
    class="absolute bottom-4 left-4 h-6 opacity-80 z-10"
  />
</template>
