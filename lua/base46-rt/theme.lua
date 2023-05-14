local generator = require("base46-rt.generator")

local function theme(type, base16_colors)
	return {
		type = type,
		base_16 = base16_colors,
		base_30 = generator.from_base16(base16_colors),
	}
end

return {
	theme = theme,
}
