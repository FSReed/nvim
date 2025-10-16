-- Float window configuration
local optional = {
  width = 120,
  height = 40,
  position = "center",
}

return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<Enter>",
        function()
          require("dap").continue()
        end,
        desc = "Continue",
      },
      {
        "<Right>",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into",
      },
      {
        "<Down>",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
      {
        "<Left>",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
      },
      {
        "<leader>dL",
        function()
          local message = vim.fn.input("Log message: ")
          require("dap").set_breakpoint(nil, nil, message)
        end,
        desc = "Set Log BreakPoint",
      },
      { "<leader>da", false },
      { "<leader>dc", false },
      { "<leader>dr", false },
      { "<leader>dg", false },
      { "<leader>di", false },
      { "<leader>dl", false },
      { "<leader>do", false },
      { "<leader>dO", false },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    keys = {
      {
        "<leader>dc",
        function()
          require("dapui").float_element("console", optional)
        end,
        desc = "dap-ui: Console",
      },
      {
        "<leader>dr",
        function()
          require("dapui").float_element("repl", optional)
        end,
        desc = "dap-ui: Repl",
      },
    },
    opts = {
      force_buffers = true,
      layouts = {
        {
          elements = {
            {
              id = "stacks",
              size = 0.5,
            },
            {
              id = "breakpoints",
              size = 0.5,
            },
          },
          position = "bottom",
          size = 0.2,
        },
        {
          elements = {
            {
              id = "scopes",
              size = 1,
            },
            -- {
            --   id = "watches",
            --   size = 0.25,
            -- },
          },
          position = "left",
          size = 0.5,
        },
      },
      -- mappings = {
      --   edit = "e",
      --   expand = { "<CR>", "<LeftMouse>" },
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
  },
}
