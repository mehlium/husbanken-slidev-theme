<template>
  <div class="slidev-layout cover relative h-full">
    <div class="my-auto w-full">
      <slot />
      <div class="ml-10 flex justify-start items-center gap-2">
        <div class="text-center">
          <div>{{ $slidev.configs.date }}</div>
        </div>
        <div>|</div>
        <div class="text-center">
          <div>{{ $slidev.configs.author }}</div>
        </div>
      </div>
    </div>
  </div>
</template>
