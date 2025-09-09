return {
  "rcarriga/nvim-dap-ui",
  opts = {
    force_buffers = true,
    layouts = {
      {
        elements = {
          {
            id = "watches",
            size = 0.5,
          },
          -- {
          --   id = "scopes",
          --   size = 0.2,
          -- },
          {
            id = "repl",
            size = 0.5,
          },
          -- {
          --   id = "stacks",
          --   size = 0.25,
          -- },
        },
        position = "left",
        size = 0.5,
      },
      {
        elements = {
          {
            id = "console",
            size = 1,
          },
          -- {
          --   id = "breakpoints",
          --   size = 0.5,
          -- },
        },
        position = "bottom",
        size = 0.2,
      },
    },
    -- mappings = {
    --   edit = "e",
    --   expand = { "<CR>", "<2-LeftMouse>" },
    --   open = "o",
    --   remove = "d",
    --   repl = "r",
    --   toggle = "t",
    -- },
    render = {
      indent = 1,
      -- max_type_length = 20,
      -- max_value_lines = 100,
    },
  },
}
