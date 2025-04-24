-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.neovide then
  vim.o.guifont = "CaskaydiaCove Nerd Font:h12"
end
require("config.lazy")
