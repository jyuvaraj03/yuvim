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
keymap("n", "<leader><leader>", ":Telescope frecency workspace=CWD<CR>", opts)
keymap("n", "<leader>,", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>sp", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>so", ":Telescope live_grep grep_open_files=true<CR>", opts)
keymap("n", "<leader>sh", ":Telescope help_tags<CR>", opts)
keymap("n", "<leader>sc", ":Telescope colorscheme enable_preview=true<CR>", opts)
keymap("n", "<leader><return>", ":Telescope resume<CR>", opts)
keymap("n", "<leader>*", ":Telescope grep_string<CR>", opts)

-- tabs & windows
-- Tabs
keymap("n", "<return>", ":tab split<CR>", opts)
keymap("n", "<leader>cc", ":tabclose<CR>", opts)
keymap("n", "<leader>tm", ":tabmove<CR>", opts)
keymap("n", "<C-h>", ":tabprevious<CR>", opts)
keymap("n", "<C-l>", ":tabnext<CR>", opts)
-- Windows split
keymap("n", "<leader>wv", ":vsplit<CR>", opts)
keymap("n", "<leader>ws", ":split<CR>", opts)

-- QuickFix
keymap("n", "[q", ":cp<CR>", opts)
keymap("n", "]q", ":cn<CR>", opts)
keymap("n", "qc", ":cclose<CR>", opts)

-- File path copy
keymap("n", "fy", ":call CopyRelativePath()<CR>", opts)
keymap("n", "fl", ":call CopyRelativePathWithLine()<CR>", opts)

-- emmet wrap
keymap("n", "<leader>xe", ":lua require('nvim-emmet').wrap_with_abbreviation()<CR>", opts)
keymap("v", "<leader>xe", ":lua require('nvim-emmet').wrap_with_abbreviation()<CR>", opts)
