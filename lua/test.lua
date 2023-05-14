local base46 = require("base46-rt")
local themeio = require("base46-rt.io")

local talk = {
  black = "#2b464e",
  red = "#963f1b",
  green = "#44946c",
  yellow = "#d08c50",
  blue = "#657866",
  purple = "#9f5e31",
  cyan = "#9d7b64",
  white = "#daaf8c",
}

local phosphor = {
  black = "#00010a",
  red = "#002520",
  green = "#006747",
  yellow = "#003c29",
  blue = "#004932",
  purple = "#00553a",
  cyan = "#00a571",
  white = "#00ff92",
}

local retropunk = {
  black = "#30454b",
  red = "#ca6e7c",
  green = "#a0d6b1",
  yellow = "#f3cbb1",
  blue = "#597f89",
  purple = "#bcadd1",
  cyan = "#74bac1",
  white = "#f1f1f1",
}

local sunset = {
  black = "#050402",
  red = "#D83F1B",
  green = "#023D44",
  yellow = "#FE7843",
  blue = "#08737D",
  purple = "#6C3B31",
  cyan = "#FEA089",
  white = "#FFFEDE",
}

local term = sunset

local base16test = {
  base00 = "#20202A",
  base01 = "#2c2e3e",
  base02 = "#3D4059",
  base03 = "#313449",
  base04 = "#63718b",
  base05 = "#bac0cb",
  base06 = "#c5cbd6",
  base07 = "#ced4df",
  base08 = "#ebb9b9",
  base09 = "#e8cca7",
  base0A = "#e6dfb8",
  base0B = "#b1dba4",
  base0C = "#b8dceb",
  base0D = "#a3b8ef",
  base0E = "#f6bbe7",
  base0F = "#eAc1c1",
}

local colors = base46.from_terminal(term)
local theme = base46.theme("dark", colors)

local file = assert(io.open("/Users/konapun/Desktop/termtest.lua", "w"))
themeio.write_theme(theme, file)
file:close()
