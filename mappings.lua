local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>v"] = "",
    ["s"] = "",
  },
}

M.general = {
  n = {
    ["<C-u>"] = { "<C-u>zz0", "Move page up" },
    ["<C-d>"] = { "<C-d>zz0", "Move page down" },
    ["n"] = { "nzzzv", "Next search term" },
    ["N"] = { "Nzzzv", "Previous search term" },
    -- ["<C-q>"] = { "<cmd>q!<cr>", "Force quit" },
  },
}

M.splits = {
  n = {
    ["|"] = { "<cmd>vsplit<cr>", "Vertical Split" },
    ["\\"] = { "<cmd>split<cr>", "Horizontal Split" },
    ["<C-h>"] = {
      function()
        require("smart-splits").move_cursor_left()
      end,
      "Move to left split",
    },
    ["<C-j>"] = {
      function()
        require("smart-splits").move_cursor_down()
      end,
      "Move to below split",
    },
    ["<C-k>"] = {
      function()
        require("smart-splits").move_cursor_up()
      end,
      "Move to above split",
    },
    ["<C-l>"] = {
      function()
        require("smart-splits").move_cursor_right()
      end,
      "Move to right split",
    },
    ["<C-Up>"] = {
      function()
        require("smart-splits").resize_up()
      end,
      "Resize split up",
    },
    ["<C-Down>"] = {
      function()
        require("smart-splits").resize_down()
      end,
      "Resize split down",
    },
    ["<C-Left>"] = {
      function()
        require("smart-splits").resize_left()
      end,
      "Resize split left",
    },
    ["<C-Right>"] = {
      function()
        require("smart-splits").resize_right()
      end,
      "Resize split right",
    },
  },
}

M.editing = {
  n = {
    ["<leader>d"] = { '"_d', "Void delete" },
    ["J"] = { "mzJ`z", "Delete endline Enter" },
    ["<leader>rw"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Replace current word" },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move selected block down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move selected block up" },
  },
}

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

return M
