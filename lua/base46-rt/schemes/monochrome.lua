local utils = require("base46-rt.colors")

local function color_to_base16(color)
  local black = utils.darken(color, 90)
  local white = utils.lighten(color, 90)
  local red = utils.darken(color, 20)
  local yellow = utils.lighten(color, 20)
  local green = color
  local cyan = utils.darken(color, 40)
  local blue = utils.darken(color, 50)
  local purple = utils.darken(color, 60)

  return {
    base00 = black,
    base01 = utils.lighten(black, 6),
    base02 = utils.lighten(black, 12),
    base03 = utils.lighten(black, 20),
    base04 = utils.darken(white, 20),
    base05 = utils.darken(white, 12),
    base06 = utils.darken(white, 6),
    base07 = white,
    base08 = red,
    base09 = utils.mix(red, yellow),
    base0A = yellow,
    base0B = green,
    base0C = cyan,
    base0D = blue,
    base0E = purple,
    base0F = utils.darken(utils.mix(purple, red), 10),
  }
end

return {
  from_color = color_to_base16,
}
