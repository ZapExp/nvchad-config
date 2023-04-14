--lsp-zero configurations
local servers = {
  -- Replace these with whatever servers you want to install
  'tsserver',
}

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed(servers)

lsp.setup()

--lspconfig configurations
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

for _, lspName in ipairs(servers) do
  lspconfig[lspName].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
