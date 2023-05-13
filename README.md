## Base46 theme plugin
This is a plugin to allow creating custom nvchad base46 themes at runtime from multiple color sources. Base46 is the theme format for nvchad so use of this package has only been tested there.

### Installing
Just include `"konapun/base46-rt"` in your plugin manager. It doesn't have to be loaded because it will be loaded manually upon use. 

### How to use
You can create a theme using either terminal colors or base16 colors. Once your theme is created, simply return it from your
theme file.

#### Use a base16 palette as a source
```lua
local base46 = require("base46-rt")

local theme = base46.theme("dark", {
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

return theme
```

#### Use a terminal palette as a source
```lua
local base46 = require("base46-rt")

local base16_colors = base46.from_terminal({
    black = "#282828",
    red = "#cc241d",
    green = "#98971a",
    yellow = "#d79921",
    blue = "#458588",
    purple = "#b16286",
    cyan = "#689d6a",
    white = "#a89984",
})
local theme = base46.theme("dark", base16_colors)
return theme
```
