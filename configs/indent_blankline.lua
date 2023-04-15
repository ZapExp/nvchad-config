vim.opt.termguicolors = true
-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#ed8796 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#eed49f gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#a6da95 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#8bd5ca gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#7dc4e4 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#c6a0f6 gui=nocombine]]
vim.opt.list = true
vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
}
