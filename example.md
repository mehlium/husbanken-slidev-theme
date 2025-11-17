---
theme: ./
author: "Kjetil Mehl"
date: "15-09-25"
pixelated: true
---

# Husbanken slidev starter


---

# What is Slidev?

Slidev is a slide maker and presentation tool designed for developers. It includes the following features:

- 📝 **Text-based** - focus on your content with Markdown, then style it later
- 🎨 **Themable** - themes can be shared and reused as npm packages
- 🧑‍💻 **Developer Friendly** - code highlighting, live coding with autocompletion
- 🤹 **Interactive** - embed Vue components to enhance your expressions
- 🎥 **Recording** - built-in recording and camera view
- 📤 **Portable** - export to PDF, PPTX, PNGs, or even a hostable SPA
- 🛠 **Hackable** - virtually anything that's possible on a webpage is possible in Slidev

<br>
<br>

Read more about [Why Slidev?](https://sli.dev/guide/why)

---

# Navigation

Hover on the bottom-left corner to see the navigation's controls panel

## Keyboard Shortcuts

|                                                      |                             |
| ---------------------------------------------------- | --------------------------- |
| <kbd>space</kbd> / <kbd>tab</kbd> / <kbd>right</kbd> | next animation or slide     |
| <kbd>left</kbd> / <kbd>shift</kbd><kbd>space</kbd>   | previous animation or slide |
| <kbd>up</kbd>                                        | previous slide              |
| <kbd>down</kbd>                                      | next slide                  |

---
layout: image-left
image: https://cover.sli.dev
---

# Test

* Image displayed to the left

---

# Code

Use code snippets and get the highlighting directly!

```ts
interface User {
  id: number;
  firstName: string;
  lastName: string;
  role: string;
}

function updateUser(id: number, update: Partial<User>) {
  const user = getUser(id);
  const newUser = { ...user, ...update };
  saveUser(id, newUser);
}
```

---
class: "bg-husbanken text-white"
---

# Husbanken Brand Background

This slide uses the Husbanken brand color with white text.

---

# Husbanken Color Palette

Use these utility classes in your slides by adding them to the `class` property in your slide frontmatter:

```yaml
---
class: "bg-logo-green text-white"
---
```

Or apply them directly to HTML elements:

```html
<div class="bg-light-green p-4">Content with light green background</div>
```

<div class="grid grid-cols-8 gap-4 p-8">

<!-- Green Colors -->
<div class="bg-white p-4 rounded shadow">
  <div class="bg-light-green w-12 h-12 rounded mb-2"></div>
  <p class="text-sm font-mono">bg-light-green</p>
</div>

<div class="bg-white p-4 rounded shadow">
  <div class="bg-soft-green w-12 h-12 rounded mb-2"></div>
  <p class="text-sm font-mono">bg-soft-green</p>
</div>

<div class="bg-white p-4 rounded shadow">
  <div class="bg-logo-green w-12 h-12 rounded mb-2"></div>
  <p class="text-sm font-mono">bg-logo-green</p>
</div>

<div class="bg-white p-4 rounded shadow">
  <div class="bg-deep-green w-12 h-12 rounded mb-2"></div>
  <p class="text-sm font-mono">bg-deep-green</p>
</div>

<div class="bg-white p-4 rounded shadow">
  <div class="bg-dark-green w-12 h-12 rounded mb-2"></div>
  <p class="text-sm font-mono">bg-dark-green</p>
</div>

<!-- Brand Colors -->
<div class="bg-white p-4 rounded shadow">
  <div class="bg-primary w-12 h-12 rounded mb-2"></div>
  <p class="text-sm font-mono">bg-primary</p>
</div>

<div class="bg-white p-4 rounded shadow">
  <div class="bg-husbanken w-12 h-12 rounded mb-2"></div>
  <p class="text-sm font-mono">bg-husbanken</p>
</div>

<div class="bg-white p-4 rounded shadow">
  <div class="bg-white border-2 border-gray-300 w-12 h-12 rounded mb-2"></div>
  <p class="text-sm font-mono">bg-white</p>
</div>

</div>

---

# All Color Utilities

<div class="grid grid-cols-8 gap-2 p-6">

<!-- Text Colors -->
<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-text-standard w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-text-standard</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-text-alternative w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-text-alternative</p>
</div>

<!-- Green Colors -->
<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-light-green w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-light-green</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-soft-green w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-soft-green</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-logo-green w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-logo-green</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-deep-green w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-deep-green</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-dark-green w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-dark-green</p>
</div>

<!-- Blue-Gray Colors -->
<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-light-blue-gray w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-light-blue-gray</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-soft-blue-gray w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-soft-blue-gray</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-blue-gray w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-blue-gray</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-deep-blue-gray w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-deep-blue-gray</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-dark-blue-gray w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-dark-blue-gray</p>
</div>

<!-- Blue Colors -->
<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-light-blue w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-light-blue</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-soft-blue w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-soft-blue</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-blue w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-blue</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-deep-blue w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-deep-blue</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-dark-blue w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-dark-blue</p>
</div>

<!-- Orange Colors -->
<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-light-orange w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-light-orange</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-soft-orange w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-soft-orange</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-orange w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-orange</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-deep-orange w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-deep-orange</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-dark-orange w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-dark-orange</p>
</div>

<!-- Brand Colors -->
<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-primary w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-primary</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-husbanken w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-husbanken</p>
</div>

<div class="bg-white p-2 rounded shadow text-center">
  <div class="bg-white border-2 border-gray-300 w-8 h-8 rounded mb-1 mx-auto"></div>
  <p class="text-xs font-mono">bg-white</p>
</div>

</div>

---
layout: center
class: "text-center"
---

# Learn More

[Documentation](https://sli.dev) / [GitHub Repo](https://github.com/slidevjs/slidev)
