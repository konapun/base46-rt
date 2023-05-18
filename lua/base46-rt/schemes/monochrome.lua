local utils = require("base46-rt.colors")

local function color_to_base16(color, opts)
  local vibrancy = opts and opts.vibrancy or 0
	local color_utils = utils
  if vibrancy then
    local highlight = opts and opts.highlight or '#ffff00'
		color_utils = utils.with_vibrancy(highlight, vibrancy)
  end

	local black = color_utils.darken(color, 70)
	local white = color_utils.lighten(color, 50)
	local yellow = color_utils.lighten(color, 15)
	local green = color
	local red = color_utils.darken(color, 15)
	local cyan = color_utils.lighten(color, 25)
	local blue = color_utils.darken(color, 35)
	local purple = color_utils.darken(color, 45)

	return {
		base00 = black,
		base01 = color_utils.lighten(black, 6),
		base02 = color_utils.lighten(black, 12),
		base03 = color_utils.lighten(black, 20),
		base04 = color_utils.darken(white, 20),
		base05 = color_utils.darken(white, 12),
		base06 = color_utils.darken(white, 6),
		base07 = white,
		base08 = red,
		base09 = color_utils.mix(red, yellow),
		base0A = yellow,
		base0B = green,
		base0C = cyan,
		base0D = blue,
		base0E = purple,
		base0F = color_utils.darken(color_utils.mix(purple, red), 10),
	}
end

return {
	from_color = color_to_base16,
}
