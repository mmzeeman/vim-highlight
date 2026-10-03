# Highlight Color Scheme

A light color scheme that uses background highlighting, much like a real
highlighter. The design goal is intentionally minimal: it marks only a
small set of important constructs instead of coloring the full syntax tree.

This is a reduced semantic highlighting theme, not a full language-theme.
It does not try to highlight every keyword, operator, function, type, or
identifier. The goal is to keep the code readable while making a few
important categories stand out at a glance.

## Motivation

Most color themes highlight everything. That often turns code into a
paint-splatter effect: every token gets a color, and the code becomes
harder to scan. This theme takes the opposite approach.

Instead of highlighting everything, it uses a small palette and applies
it sparingly. The result is less visual noise, more calm reading, and
better separation between the few elements that matter most: comments,
strings, errors, search hits, definitions, and numbers.

| Color   | Meaning                             |
|---------|-------------------------------------|
| Magenta | Titles, Numbers, Chars, Booleans    |
| Yellow  | Comments, todo's, warning messages  |
| Red     | Error handling, Exceptions          |
| Orange  | Search results                      |
| Blue    | Definitions                         |
| Green   | Strings                             |

The theme uses background colors to highlight elements. Most themes
use foreground colors, which looks good on dark backgrounds but often
feels less attractive on light backgrounds. This scheme instead uses
highlighter-like background marks, inspired by real-world marker pens.

## Dark themes

I also added dark variants for those times when you are working without proper
workspace lighting. The same reduced-highlighting idea applies, but with a dark
background that is easier on the eyes in low-light environments.

## Screenshots

### Light Themes

#### `scapple`

The colors chosen are inspired by the colors used for notes in
the excellent free form mindmap tool
[Scapple](https://www.literatureandlatte.com/scapple/overview).

<img width="480" height="371" alt="Screenshot 2025-10-26 at 14 15 24" src="https://github.com/user-attachments/assets/8d344040-de5c-4206-962e-b06155c82e7e" />

#### `zebra-gentle`

Zebra highlighter colors. Gentle color set.

<img width="481" height="361" alt="Screenshot 2025-12-10 at 23 39 41" src="https://github.com/user-attachments/assets/565f96d9-c5c0-43c3-810d-40d4d4f75ffe" />

#### `zebra-friendly`

Zebra highlighter colors. Friendly color set.

<img width="484" height="360" alt="Screenshot 2025-12-13 at 15 15 12" src="https://github.com/user-attachments/assets/811990da-01e3-4733-a51c-5ad677ca2a1b" />

#### `stabilo-original`

Colors based on the standard Stabilo Original set.

<img width="485" height="370" alt="Screenshot 2025-12-13 at 21 26 47" src="https://github.com/user-attachments/assets/b1a77650-d5cd-44c5-9d3f-ef22177b50ae" />


#### `techo`

Highlight colors based on the Hobonici Month Colors.

<img width="485" height="367" alt="Screenshot 2025-12-13 at 21 31 20" src="https://github.com/user-attachments/assets/35403528-038d-442e-9c01-c646483e66d4" />

### Dark Themes

#### `scapple-dark`

Dark theme based on `scapple` light theme.

#### `stabilo-original-dark`

Dark theme based on `stabilo-original` light theme.

## Usage

```
set termguicolors
colorscheme highlight-scapple
```

## License

[MIT License](https://github.com/mmzeeman/vim-highlighter/blob/master/./LICENSE.txt)
