local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["s"] = "",
  },
}

M.editing = {
  n = {
    ["<C-s>"] = { ":w<cr>", "Save file", opts = { silent = true } },
    ["<C-u>"] = { "<C-u>zz0", "Scroll up", opts = { silent = true } },
    ["<C-d>"] = { "<C-d>zz0", "Scroll down", opts = { silent = true } },
    ["{"] = { "{zz0", "Scroll to top of screen", opts = { silent = true } },
    ["}"] = { "}zz0", "Scroll to bottom of screen", opts = { silent = true } },
    ["n"] = { "nzzzv", "Visually highlight current search result", opts = { silent = true } },
    ["N"] = { "Nzzzv", "Visually highlight current search result in reverse", opts = { silent = true } },
    ["<Esc>"] = { ":noh<CR>", "Clear search highlighting", opts = { silent = true } },
    ["J"] = { "mzJ`z", "Join current line with next line", { silent = true } }
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move selected block down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move selected block up" },
  },
  i = {
    -- ["<C-b>"] = { "<ESC>^i", "Insert at beginning of line" },
    -- ["<C-e>"] = { "<End>", "Move cursor to end of line" },
    -- ["<C-h>"] = { "<Left>", "Move cursor left" },
    -- ["<C-l>"] = { "<Right>", "Move cursor right" },
    -- ["<C-j>"] = { "<Down>", "Move cursor down" },
    -- ["<C-k>"] = { "<Up>", "Move cursor up" },
    ["<C-s>"] = { "<esc>:w<cr>a", "Save file and return to insert mode" },
  }
}

-- M.hop = {
--   n = {
--     ["ñ"] = { ":HopWord<cr>", "Hop to a word" },
--     ["Ñ"] = { ":HopLine<cr>", "Hop to a line" },
--   }
-- }

M.Harpooon = {
  n = {
    ["<leader>ha"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "add file to Harpooon",
    },
    ["<leader>ht"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "toggle quick menu",
    },
    ["<leader>hf"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "Go to file 1",
    },
    ["<leader>hg"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "Go to file 2",
    },
    ["<leader>hh"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      "Go to file 3",
    },
    ["<leader>hj"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      "Go to file 4",
    },
    ["<leader>hn"] = {
      function()
        require("harpoon.ui").nav_next()
      end,
      "Go to file 4",
    },
    ["<leader>hp"] = {
      function()
        require("harpoon.ui").nav_prev()
      end,
      "Go to file 4",
    },
  },
}

M.lspconfig = {
  n = {
    ["<leader>q"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "floating diagnostic",
    },
    ["<leader>Q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "diagnostic setloclist",
    },
  },
}

return M;
