require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Remove nvchad new buffer default keymap
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
