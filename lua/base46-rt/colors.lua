local floor = math.floor
local max = math.max

-- https://gist.github.com/fernandohenriques/12661bf250c8c2d8047188222cab7e28
local function hex2rgb(hex)
  local r, g, b
  local hex = hex:gsub("#", "")
  if hex:len() == 3 then
    r, g, b = (tonumber("0x" .. hex:sub(1, 1)) * 17) / 255,
        (tonumber("0x" .. hex:sub(2, 2)) * 17) / 255,
        (tonumber("0x" .. hex:sub(3, 3)) * 17) / 255
  else
    r, g, b = tonumber("0x" .. hex:sub(1, 2)) / 255,
        tonumber("0x" .. hex:sub(3, 4)) / 255,
        tonumber("0x" .. hex:sub(5, 6)) / 255
  end

  return
    r * 255,
    g * 255,
    b * 255
end

local function rgb2hex(r, g, b)
  return ("#%02x%02x%02x"):format(floor(r), floor(g), floor(b))
end

-- https://github.com/mut-ex/awesome-wm-nice/blob/master/colors.lua
local function lighten(color, amount)
  local r, g, b
  r, g, b = hex2rgb(color)
  r = r + floor(2.55 * amount)
  g = g + floor(2.55 * amount)
  b = b + floor(2.55 * amount)
  r = r > 255 and 255 or r
  g = g > 255 and 255 or g
  b = b > 255 and 255 or b
  return rgb2hex(r, g, b)
end

-- Darkens a given hex color by the specified amount
local function darken(color, amount)
  local r, g, b
  r, g, b = hex2rgb(color)
  r = max(0, r - floor(r * (amount / 100)))
  g = max(0, g - floor(g * (amount / 100)))
  b = max(0, b - floor(b * (amount / 100)))
  return rgb2hex(r, g, b)
end

local function mix(color1, color2)
  local r1, g1, b1, r2, g2, b2
  r1, g1, b1 = hex2rgb(color1)
  r2, g2, b2 = hex2rgb(color2)

  local r, g, b = (r1 + r2) / 2, (g1 + g2) / 2, (b1 + b2) / 2
  return rgb2hex(r, g, b)
end

return {
  lighten = lighten,
  darken = darken,
  mix = mix,
}
