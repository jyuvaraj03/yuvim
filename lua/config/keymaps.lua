local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window navigation
keymap("n", ",", "<C-w>w", opts)
keymap("n", ";", "<C-w>W", opts)

-- Navigate buffers
keymap("n", "<leader>l", ":b#<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", ":move .+1<CR>==", opts)
keymap("n", "<A-k>", ":move .-2<CR>==", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Visual --
-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- open explorer
keymap("n", "<leader>e", ":Neotree toggle<CR>", opts)
keymap("n", "<leader>E", ":Neotree toggle reveal<CR>", opts)

-- telescope
keymap("n", "<leader><leader>", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>,", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>sp", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>so", ":Telescope live_grep grep_open_files=true<CR>", opts)
keymap("n", "<leader>sh", ":Telescope help_tags<CR>", opts)