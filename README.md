## NvChad theme plugin
This is a plugin to allow creating custom nvchad base64 themes at runtime from terminal colors

### Installing

#### Lazy.nvim
#### Packer

### How to use
To create a theme, call `base64rt.theme` and pass it type (`light|dark`) and a table of terminal
colors. Base16 and base30 colors will be automatically generated based on a lighten/darken algorithm.

Once your theme is created, register it with nvchad by calling `base64rt.register`.

#### Use a base16 palette as a source
```lua
local base64rt = require("base64-rt")

local theme = base64.theme("dark", {
    base00 = "#20202A",
    base01 = "#2c2e3e",
    base02 = "#3D4059",
    base03 = "#313449",
    base04 = "#63718b",
    base05 = "#bac0cb",
    base06 = "#c5cbd6",
    base07 = "#ced4df",
    base08 = "#ebb9b9",
    base09 = "#e8cca7",
    base0A = "#e6dfb8",
    base0B = "#b1dba4",
    base0C = "#b8dceb",
    base0D = "#a3b8ef",
    base0E = "#f6bbe7",
    base0F = "#eAc1c1",
})

base64.register(theme)
```

#### Use a terminal palette as a source
```lua
local base64rt = require("base64-rt")

local base16_colors = base64.from_terminal({
    black = "#282828",
    red = "#cc241d",
    green = "#98971a",
    yellow = "#d79921",
    blue = "#458588",
    purple = "#b16286",
    cyan = "#689d6a",
    white = "#a89984",
})
local theme = base64.theme("dark", base16_colors)

base64.register(theme)
```
