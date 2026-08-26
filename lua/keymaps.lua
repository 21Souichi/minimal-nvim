local map = vim.keymap.set

-- Better escape
map("i", "jk", "<Esc>", { desc = "Escape insert mode" })

-- Save
map("n", "<leader>w", "<cmd>write<cr>", { desc = "Save file" })

-- Quit
map("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })

-- Netrw
map("n", "<leader>e", "<cmd>Explore<cr>", { desc = "File explorer" })

-- Terminal
map("n", "<leader>t", "<cmd>split | terminal<cr>", { desc = "Terminal" })

-- Clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- Move selected lines
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Keep cursor centered
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
