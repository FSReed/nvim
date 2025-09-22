return {
  {
    "Saghen/blink.cmp",
    opts = {
      -- I'm fed up with accepting auto-completions with <CR> 😣
      keymap = {
        preset = "default",
      },
      cmdline = {
        enabled = true,
        keymap = { preset = "cmdline" },
        completion = {
          list = { selection = { preselect = false } },
          menu = {
            auto_show = function()
              return vim.fn.getcmdtype() == ":"
            end,
          },
        },
      },
    },
  },
}
