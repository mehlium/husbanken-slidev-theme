# Husbanken slidev theme

[![NPM version](https://img.shields.io/npm/v/@mehlium/husbanken-slidev-theme?color=3AB9D4&label=)](https://www.npmjs.com/package/@mehlium/husbanken-slidev-theme)

A Husbanken theme for [Slidev](https://github.com/slidevjs/slidev).

<!--
  Learn more about how to write a theme:
  https://sli.dev/guide/write-theme.html
--->

<!--
  run `npm run dev` to check out the slides for more details of how to start writing a theme
-->

<!--
  Put some screenshots here to demonstrate your theme

  Live demo: [...]
-->

## One-liner to get started on linux with npm installed

    cat > slides.md << 'EOF'
    ---
    theme: "@mehlium/husbanken-slidev-theme"
    author: "Fornavn Etternavn"
    date: "DD-MM-YY"
    ---

    # Hei fra sli.dev

    EOF
    npm install @mehlium/husbanken-slidev-theme && npx @slidev/cli

## Install

Add the following frontmatter to your `slides.md`. Start Slidev then it will prompt you to install the theme automatically.

<pre><code>---
theme: <b>"@mehlium/husbanken-slidev-theme"</b>
---</code></pre>

Learn more about [how to use a theme](https://sli.dev/guide/theme-addon#use-theme).

## Layouts

This theme provides the following layouts:

> TODO:

## Components

This theme provides the following components:

> TODO:

## Color Utilities

This theme includes Husbanken brand color utilities that can be used as CSS classes:

### Usage

Add color utilities to slide frontmatter:
```yaml
---
class: "bg-logo-green text-white"
---
```

Or apply them to HTML elements:
```html
<div class="bg-light-green p-4">Content with light green background</div>
```

### Available Colors

#### Green Colors (Primary Brand Colors)
- `bg-light-green` - Light green (#ddedcf)
- `bg-soft-green` - Soft green (#b7d89b)
- `bg-logo-green` - Logo green (#78b546)
- `bg-deep-green` - Deep green (#5d8d37)
- `bg-dark-green` - Dark green (#3f6025)

#### Blue-Gray Colors (Secondary)
- `bg-light-blue-gray` - Light blue gray (#dfe9ee)
- `bg-soft-blue-gray` - Soft blue gray (#bcd1dd)
- `bg-blue-gray` - Blue gray (#84a9bf)
- `bg-deep-blue-gray` - Deep blue gray (#5486a4)
- `bg-dark-blue-gray` - Dark blue gray (#2c4656)

#### Blue Colors (Accent)
- `bg-light-blue` - Light blue (#d6e9ff)
- `bg-soft-blue` - Soft blue (#abd0ff)
- `bg-blue` - Blue (#5ea6ff)
- `bg-deep-blue` - Deep blue (#107bff)
- `bg-dark-blue` - Dark blue (#0053b8)

#### Orange Colors (Accent)
- `bg-light-orange` - Light orange (#fde3d0)
- `bg-soft-orange` - Soft orange (#f8b07c)
- `bg-orange` - Orange (#f58739)
- `bg-deep-orange` - Deep orange (#d15e0b)
- `bg-dark-orange` - Dark orange (#8f4008)

#### Text Colors
- `bg-text-standard` - Standard text (#10190a)
- `bg-text-alternative` - Alternative text (#2c4656)

#### Brand Colors
- `bg-primary` - Theme primary color (CSS variable)
- `bg-husbanken` - Husbanken brand color (#2c4656)
- `bg-white` - White (#ffffff)

## Contributing

- `npm install`
- `npm run dev` to start theme preview of `example.md`
- Edit the `example.md` and style to see the changes
- `npm run export` to generate the preview PDF
- `npm run screenshot` to generate the preview PNG
