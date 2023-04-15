--lsp-zero configurations
local servers = {
  -- Replace these with whatever servers you want to install
  "tsserver",
  "svelte",
  "lua_ls",
  "prismals",
  "tailwindcss",
}

local lsp = require("lsp-zero").preset {}

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps { buffer = bufnr }
end)

lsp.ensure_installed(servers)

lsp.setup()

-- --lspconfig configurations
-- local on_attach = require("plugins.configs.lspconfig").on_attach
local utils = require "core.utils"
local lspconfig = require "lspconfig"

for _, lspName in ipairs(servers) do
  lspconfig[lspName].setup {
    -- on_attach = on_attach,
    on_attach = function(client, bufnr)
      if client.name == "tsserver" then
        client.resolved_capabilities.document_formatting = false
      end
      utils.load_mappings("lspconfig", { buffer = bufnr })
    end,
  }
end
