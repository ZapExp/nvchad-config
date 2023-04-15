local M = {}

M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<leader>v"] = "",
  },
}

M.general = {
  n = {
    ["<C-u>"] = { "<C-u>zz^", "Move page up" },
    ["<C-d>"] = { "<C-d>zz^", "Move page down" },
    ["n"] = { "nzzzv", "Next search term" },
    ["N"] = { "Nzzzv", "Previous search term" },
  },
}

M.editing = {
  n = {
    ["<leader>d"] = { '"_d', "Void delete" },
    ["J"] = { "mzJ`z", "Delete endline Enter" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Replace current word" },
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
return M
