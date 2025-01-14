require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local mark = require "harpoon.mark"
local ui = require "harpoon.ui"

-- Remove nvchad new buffer default keymap
map("", "<leader>h", "", { noremap = true, silent = true })
map("", "<leader>b", "", { noremap = true, silent = true })
map("", "<C-n>", "", { noremap = true, silent = true })
map("", "<leader>e", "", { noremap = true, silent = true })
map("", "<leader>wa", "", { noremap = true, silent = true })
map("", "<leader>wl", "", { noremap = true, silent = true })
map("", "<leader>wr", "", { noremap = true, silent = true })
map("", "<leader>wk", "", { noremap = true, silent = true })

-- lazyvim keymap

-- nvim tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })

-- buffer
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "next buffer" })
map("n", "[b", "<cmd>bprevious<cr>", { desc = "prev buffer" })
map("n", "]b", "<cmd>bnext<cr>", { desc = "next buffer" })
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "switch to other buffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "switch to other buffer" })
map("n", "<leader>bd", "<cmd>:bd<cr>", { desc = "delete buffer and window" })

-- windows
map("n", "<leader>w", "<c-w>", { desc = "Windows", remap = true })
map("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })

-- harpoon
map("n", "<leader>a", mark.add_file, { desc = "Harpoon Add File" })
map("n", "<C-e>", ui.toggle_quick_menu)
map("n", "<leader>1", function()
  ui.nav_file(1)
end, { desc = "Harpoon File 1" })
map("n", "<leader>2", function()
  ui.nav_file(2)
end, { desc = "Harpoon File 2" })
map("n", "<leader>3", function()
  ui.nav_file(3)
end, { desc = "Harpoon File 3" })
map("n", "<leader>4", function()
  ui.nav_file(4)
end, { desc = "Harpoon File 4" })
