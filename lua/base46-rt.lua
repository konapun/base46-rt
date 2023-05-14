local themer = require("base46-rt.theme")

return {
  scheme = {
    terminal = require("base46-rt.schemes.terminal").from_terminal,
    terminal_extended = require("base46-rt.schemes.terminal_extended").from_terminal,
    monochrome = require("base46-rt.schemes.monochrome").from_color,
    image = require("base46-rt.schemes.image").from_image,
  },
  theme = themer.theme,
}
