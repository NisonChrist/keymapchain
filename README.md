# keymapchain
A Lua module Implementing neovim key mapping through chain calls.

## Usage

```Lua
-- Import keymapchain module
local keymap = require('keymapchain')
-- Use chain calls to map keys
keymap.whenInMode('INSERT').map('jk').to'<Esc>')
```

```Lua
-- Import keymapchain module
local keymap = require('keymapchain')
-- Use chain calls to map keys
keymap.whenInMode('NORMAL').map('<leader>sv').to'<C-w>v') -- 水平新增窗口
keymap.whenInMode('NORMAL').map('<leader>sh').to'<C-w>s') -- 垂直新增窗口
```
