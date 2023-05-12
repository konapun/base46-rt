local generator = require("base46-rt.generator")
local themer = require("base46-rt.theme")
local bridge = require("base46-rt.bridge")

return {
  from_terminal = generator.terminal_to_base16,
  theme = themer.theme,
  register = bridge.register,
}
