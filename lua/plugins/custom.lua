-- some custom configs

return {
  {
    -- The search count will appear randomly on the screen with scroll animation
    -- So I change search_count from virtualText to mini
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.routes = {
        {
          view = "mini",
          filter = {
            event = "msg_show",
            kind = "search_count",
          },
        },
      }
    end,
  },

  {
    "Saghen/blink.cmp",
    opts = function(_, opts)
      -- I'm fed up with accepting auto-completions with <CR> 😣
      opts.keymap.preset = "default"
    end,
  },

  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
  }
}
