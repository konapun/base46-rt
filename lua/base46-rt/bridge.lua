local base46 = require("base46")

local function register(name, theme)
  base46.override_theme(theme, name)
end

return {
  register = register
}
