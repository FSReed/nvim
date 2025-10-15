-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Customize winbar
vim.o.winbar = "%=%m %f"

-- WSL clipboard settings
vim.o.clipboard = ""
vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = "clip.exe",
    ["*"] = "clip.exe",
  },
  paste = {
    ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = 1,
}

vim.g.lazyvim_picker = "fzf"

vim.g.autoformat = false
vim.lsp.set_log_level("OFF")

vim.opt.colorcolumn = "120"
vim.cmd [[highlight Colorcolumn guibg=#1f1e33]]

vim.g.lazyvim_python_lsp = "basedpyright"
