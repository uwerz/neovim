-- Basic Key config
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Set SPACE key as leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Movement between panes
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Basic Keybinds
keymap("n", "<leader>t", "<cmd>ToggleTerm size=20<CR>", opts) 
keymap("n", "<leader>c", "<cmd>e ~/.config/nvim<CR>", opts)
keymap("n", "<leader>h", "<cmd>BufferLineCyclePrev<CR>", opts)
keymap("n", "<leader>l", "<cmd>BufferLineCycleNext<CR>", opts)
keymap("n", "<leader>f", "<cmd>Neotree toggle<CR>", opts)
keymap("n", "<leader>s", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>b", "<cmd>lua vim.lsp.buf.format<CR>", opts)
keymap("n", "<leader>x", "<cmd>bd<CR>", opts)
