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
        desc = "Set Log BreakPoint"
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
}
