--lsp-zero configurations
local servers = {
  -- Replace these with whatever servers you want to install
  "tsserver",
  "svelte",
  "lua_ls",
  "prismals",
  "tailwindcss",
  "cssls",
}

-- local lsp = require("lsp-zero").preset {}
-- local utils = require "core.utils"
--
-- lsp.ensure_installed(servers)
--
-- lsp.on_attach(function(client, bufnr)
--   lsp.default_keymaps { buffer = bufnr }
--
--   if client.name == "tsserver" then
--     client.resolved_capabilities.document_formatting = false
--   end
--
--   if client.server_capabilities.signatureHelpProvider then
--     require("nvchad_ui.signature").setup(client)
--   end
--
--   utils.load_mappings("lspconfig", { buffer = bufnr })
-- end)
--
-- lsp.setup()
--
-- --lspconfig configurations
-- local on_attach = require("plugins.configs.lspconfig").on_attach
-- local lspconfig = require "lspconfig"
--
-- for _, lspName in ipairs(servers) do
--   lspconfig[lspName].setup {
--     -- on_attach = on_attach,
--     on_attach = function(client, bufnr)
--       if client.name == "tsserver" then
--         client.resolved_capabilities.document_formatting = false
--       end
--       if client.server_capabilities.signatureHelpProvider then
--         require("nvchad_ui.signature").setup(client)
--       end
--       utils.load_mappings("lspconfig", { buffer = bufnr })
--     end,
--   }
-- end
require("mason").setup()
local utils = require "core.utils"

require("mason-lspconfig").setup {
  ensure_installed = servers,
}

local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp_attach = function(client, bufnr)
  if client.name == "tsserver" then
    client.resolved_capabilities.document_formatting = false
  end

  if client.server_capabilities.signatureHelpProvider then
    require("nvchad_ui.signature").setup(client)
  end

  utils.load_mappings("lspconfig", { buffer = bufnr })
end

-- local lspconfig = require "lspconfig"
-- require("mason-lspconfig").setup_handlers {
--   function(server_name)
--     lspconfig[server_name].setup {
--       on_attach = lsp_attach,
--       capabilities = lsp_capabilities,
--     }
--   end,
-- }
local lspconfig = require "lspconfig"
local get_servers = require("mason-lspconfig").get_installed_servers

for _, server_name in ipairs(get_servers()) do
  lspconfig[server_name].setup {
    on_attach = lsp_attach,
    capabilities = lsp_capabilities,
  }
end
