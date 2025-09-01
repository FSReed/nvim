return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      code = {
        sign = false,
        render_modes = true,
        width = "block",
        min_width = 80,
        position = "left",
        left_pad = 2,
        border = "thin",
      },
      heading = {
        icons = { "① ", "②,", "③ ", "④ ", "⑤ ", "⑥ " },
        render_modes = true,
      },
    },
  },
}
