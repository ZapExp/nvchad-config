---@type ChadrcConfig
local M = {}
M.ui = {
  theme = "catppuccin",
  changed_themes = {
    catppuccin = {
      base_30 = {
        grey = "#808088", --line numbers color
        grey_fg = "#6b6b78", -- commentary color
      },
    },
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
