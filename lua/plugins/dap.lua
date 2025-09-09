return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<F5>",
        function()
          require("dap").continue()
        end,
        desc = "Continue",
      },
      {
        "<F6>",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into",
      },
      {
        "<F7>",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
      {
        "<F8>",
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
        desc = "Set Log BreakPoint"
      },
    },
  },
}
