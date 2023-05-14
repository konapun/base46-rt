local utils = require("base46-rt.colors")

local function base16_to_base30(base16)
  local black = base16.base00
  local white = base16.base07
  local red = base16.base08
  local orange = base16.base09
  local yellow = base16.base0A
  local green = base16.base0B
  local cyan = base16.base0C
  local blue = base16.base0D
  local purple = base16.base0E

  local grey = utils.lighten(black, 40)
  local statusline_bg = utils.lighten(black, 4)

  return {
    white = white,
    darker_black = utils.darken(black, 6),
    black = black, --  nvim bg
    black2 = utils.lighten(black, 6),
    one_bg = utils.lighten(black, 10),
    one_bg2 = utils.lighten(black, 19),
    one_bg3 = utils.lighten(black, 27),
    grey = grey,
    grey_fg = utils.lighten(grey, 10),
    grey_fg2 = utils.lighten(grey, 20),
    light_grey = utils.lighten(grey, 28),
    red = red,
    baby_pink = utils.lighten(red, 15),
    pink = utils.lighten(red, 6),
    line = utils.lighten(black, 15), -- for lines like vertsplit
    green = green,
    vibrant_green = utils.lighten(green, 6),
    blue = blue,
    nord_blue = utils.darken(blue, 13),
    yellow = yellow,
    sun = utils.lighten(yellow, 8),
    purple = purple,
    dark_purple = utils.darken(purple, 10),
    teal = utils.darken(utils.mix(blue, green), 10),
    orange = orange,
    cyan = cyan,
    statusline_bg = statusline_bg,
    lightbg = utils.lighten(statusline_bg, 13),
    pmenu_bg = base16.base0F,
    folder_bg = blue,
  }
end

return {
  from_base16 = base16_to_base30,
}
