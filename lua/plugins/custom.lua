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
    "folke/snacks.nvim",
    opts = function(_, opts)
      -- I use neovide, I don't need scroll animation :)
      opts.scroll.enabled = false
    end,
  },
}
