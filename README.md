# WORK IN PROGRESS
Don't use this yet

## Base46 theme plugin
This is a plugin to allow creating custom nvchad base46 themes at runtime from multiple color sources. Base46 is the theme format for nvchad so use of this package has only been tested there.

### Installing
Just include `"konapun/base46-rt"` in your plugin manager. It doesn't have to be loaded because it will be loaded manually upon use. 

### How to use
You can create a theme using base16 colors or one of the available scheme generators. Once your theme is created, simply return it from your theme file.

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

### Color generation algorithms
#### Term colors 
Uses a table of term colors to generate base46 theme.

```lua
local base46 = require("base46-rt")

local base16_colors = base46.scheme.terminal({
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

#### Term colors (Extended)
Uses a table of terminal colors along with their "bright" versions to generate a base46 theme.

```lua
local base46 = require("base46-rt")

local base16_colors = base46.scheme.terminal_extended({
    black = "#282828",
    bright_black = "#928374",
    red = "#cc241d",
    bright_red = "#fb4934",
    green = "#98971a",
    bright_green = "#b8bb26",
    yellow = "#d79921",
    bright_yellow = "#fabd2f",
    blue = "#458588",
    bright_blue = "#83a598",
    purple = "#b16286",
    bright_purple = "#d3869b",
    cyan = "#689d6a",
    bright_cyan = "#8ec07c",
    white = "#a89984",
    bright_white = "#ebdbb2",
})
local theme = base46.theme("dark", base16_colors)
return theme
```

#### Image
Extracts colors from an image to use as a source for generating a base46 theme.

```lua
local base46 = require("base46-rt")

local base16_colors = base46.scheme.image("/Users/konapun/Pictures/wallpaper/my-image.png")
local theme = base46.theme("dark", base16_colors)
return theme
```

#### Monochrome
Uses a single color to generate a base46 theme (a la oldschool ttys).

##### Options
  * `highlight` Mix a highlight color into the generated palette
  * `intensity`  Set an intensity for highlight mixing
```lua
local base46 = require("base46-rt")

local base16_colors = base46.scheme.monochrome("#00ff00")
local theme = base46.theme("dark", base16_colors)
return theme
```
