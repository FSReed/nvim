-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keyset = vim.keymap.set
local opts = { noremap = true, silent = true }

-- In terminal mode
keyset("t", "<Esc>", "<C-\\><C-n>", opts)
