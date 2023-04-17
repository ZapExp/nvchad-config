---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "catppuccin",
  changed_themes = {
    catppuccin = {
      base_30 = {
        grey = "#808080", --line numbers color
        grey_fg = "#6b6b6b", -- commentary color
      },
    },
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
