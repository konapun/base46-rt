local utils = require("base46-rt.colors")

local function terminal_to_base16(colors)
  return {
    base00 = colors.black,
    base01 = utils.lighten(colors.black, 6),
    base02 = utils.lighten(colors.black, 12),
    base03 = utils.lighten(colors.black, 20),
    base04 = utils.darken(colors.white, 20),
    base05 = utils.darken(colors.white, 12),
    base06 = utils.darken(colors.white, 6),
    base07 = colors.white,
    base08 = colors.red,
    base09 = utils.mix(colors.red, colors.yellow),
    base0A = colors.yellow,
    base0B = colors.green,
    base0C = colors.cyan,
    base0D = colors.blue,
    base0E = colors.purple,
    base0F = utils.darken(utils.mix(colors.purple, colors.red), 10),
  }
end

return {
  from_terminal = terminal_to_base16,
}
