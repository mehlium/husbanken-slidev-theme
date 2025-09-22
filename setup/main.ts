import { defineAppSetup } from '@slidev/types'

export default defineAppSetup(({ app, router }) => {
  // Global background color configuration function
  const setGlobalBackgroundColor = (color: string) => {
    const style = document.createElement('style')
    style.id = 'slidev-global-background'

    // Remove existing global background style if it exists
    const existingStyle = document.getElementById('slidev-global-background')
    if (existingStyle) {
      existingStyle.remove()
    }

    style.textContent = `
      .slidev-layout {
        background-color: ${color} !important;
      }
    `

    document.head.appendChild(style)
  }

  // Make the function globally available
  if (typeof window !== 'undefined') {
    ;(window as any).setGlobalBackgroundColor = setGlobalBackgroundColor
  }

  // You can also set a default background color here if needed
  // setGlobalBackgroundColor('#ffffff')
})