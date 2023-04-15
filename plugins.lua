local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "svelte",
      },
    },
  },
  -- Theme customization
  -- {
  --   "catppuccin",
  --   opts = {
  --     no_italic = true,
  --     integrations = {
  --       -- sandwich = false,
  --       -- noice = true,
  --       -- mini = true,
  --       -- leap = true,
  --       -- markdown = true,
  --       -- neotest = true,
  --       -- cmp = true,
  --       -- overseer = true,
  --       -- lsp_trouble = true,
  --       ts_rainbow2 = true,
  --     },
  --   },
  -- },
  -- {
  -- "nvim-treesitter/nvim-treesitter",
  -- dependencies = {
  --   "HiPhish/nvim-ts-rainbow2",
  --   config = function()
  --     -- HACK: https://github.com/p00f/nvim-ts-rainbow/issues/112#issuecomment-1310835936
  --     vim.api.nvim_create_autocmd({ "BufWritePost", "FocusGained" }, {
  --       callback = function()
  --         vim.cmd "TSDisable rainbow"
  --         vim.cmd "TSEnable rainbow"
  --       end,
  --     })
  --   end,
  -- },
  -- opts = { rainbow = { enable = true } },
  -- },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      -- char = "▏",
      char = "│",
      filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
      show_trailing_blankline_indent = false,
      show_current_context = false,
    },
    config = function()
      require "custom.configs.indent_blankline"
    end,
  },
  -- {
  --   "echasnovski/mini.indentscope",
  --   version = false, -- wait till new 0.7.0 release to put it back on semver
  --   event = { "BufReadPre", "BufNewFile" },
  --   opts = {
  --     -- symbol = "▏",
  --     symbol = "│",
  --     options = { try_as_border = true },
  --   },
  --   init = function()
  --     vim.api.nvim_create_autocmd("FileType", {
  --       pattern = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
  --       callback = function() vim.b.miniindentscope_disable = true end,
  --     })
  --   end,
  --   config = function(_, opts) require("mini.indentscope").setup(opts) end,
  -- },
}
return plugins
