-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local lspSafeQuitGroup = vim.api.nvim_create_augroup("LspSafeQuit", { clear = true })
-- Create the autocmd that triggers on the "VimLeave" event.
-- This event fires just before Neovim exits.
vim.api.nvim_create_autocmd("QuitPre", {
  group = lspSafeQuitGroup,
  pattern = "*", -- Apply to all files and buffers.
  desc = "Safely stop active LSP servers before quitting Neovim",
  callback = function()
    -- Get a list of all active LSP clients.
    local active_clients = vim.lsp.get_clients()

    -- Check if the list is not empty. The '#' operator gets the length of a table.
    if #active_clients > 0 then
      -- If there are active clients, execute the LspStop command to shut them down.
      -- We wrap this in a protected call (pcall) so that if the LspStop
      -- command were to fail for some reason, it wouldn't prevent Neovim from exiting.
      vim.cmd("LspStop")
    end
  end,
})
