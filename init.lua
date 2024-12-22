-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.neovide then
  vim.o.guifont = "JetBrainsMonoNL Nerd Font Mono:h12"
end
require("config.lazy")
