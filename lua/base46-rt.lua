local generator = require("base46-rt.generator")
local themer = require("base46-rt.theme")

return {
  from_terminal = generator.terminal_to_base16,
  theme = themer.theme,
}
