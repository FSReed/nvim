-- color schemes
local function get_colorscheme()
  local schemes = {
    "tokyonight-storm",
    -- "Eva-Dark-Bold",
    -- "gruvbox",
    -- "catppuccin-macchiato",
  }
  math.randomseed(os.time())
  local random_idx = math.random(#schemes)
  return schemes[random_idx]
end

return {
  { "ellisonleao/gruvbox.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = get_colorscheme(),
    },
  },

  {
    "folke/tokyonight.nvim",
    opts = {
      on_colors = function(colors)
        colors.border = "#565f89"
      end,
    },
  },

  { "sharpchen/Eva-Theme.nvim" },
}
