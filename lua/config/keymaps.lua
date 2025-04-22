-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keyset = vim.keymap.set
local opts = { noremap = true, silent = true }

-- In terminal mode
keyset("t", "<Esc>", "<C-\\><C-n>", opts)

-- Interact with system clipboard
keyset("v", "Y", "\"+y", opts) -- Yank
keyset({"n", "v"}, "P", "\"+p", opts) -- Paste
keyset("i", "<C-v>", "<C-r>+", opts) -- Paste in insert mode
