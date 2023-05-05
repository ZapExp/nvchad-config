local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
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
  {
    "echasnovski/mini.surround",
    version = false,
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("mini.surround").setup()
    end,
  },
  {
    "ThePrimeagen/harpoon",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "phaazon/hop.nvim",
    branch = "v2", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      -- require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
      require("hop").setup({ keys = "asdfghjklñ" })
    end,
    keys = {
      { "ñ", "<cmd>HopWord<cr>", desc = "Hop to a word" },
      { "Ñ", "<cmd>HopLine<cr>", desc = "Hop to a line" },
    },
  },
  {
    "mbbill/undotree",
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "UndoTree" },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}

return plugins
