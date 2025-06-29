# keymapchain

[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/NisonChrist/keymapchain)

A Lua module Implementing neovim key mapping through chain calls.

```
whenInMode(vimMode) -> map(key) -> to(keyOrCommand)
```

## Usage

```Lua
-- Import keymapchain module
local keymap = require('keymapchain')
-- Use chain calls to map keys
keymap.whenInMode('INSERT').map('jk').to('<Esc>') -- Exit insert mode to normal mode
```

```Lua
-- Import keymapchain module
local keymap = require('keymapchain')
-- Use chain calls to map keys
keymap.whenInMode('NORMAL').map('<leader>sv').to('<C-w>v') -- Horizontal split window
keymap.whenInMode('NORMAL').map('<leader>sh').to('<C-w>s') -- Vertical split window
```

## Features

- **Highly Readable**: Chain calls make key mappings easy to read and understand.
- **Chain Mapping**: Easily map multiple keys in sequence.
- **Mode-Specific Mapping**: Map keys based on the current mode (NORMAL, INSERT, etc.).
- **Customizable**: Customize key mappings to suit your workflow.
