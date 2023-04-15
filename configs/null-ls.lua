local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

local sources = {
   formatting.prettierd.with({ extra_args = { "--single-attribute-per-line" } }),
   formatting.stylua,
   formatting.rustywind,
}

null_ls.setup {
   debug = false,
   sources = sources,
}
