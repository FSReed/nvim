return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<F5>",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into",
      },
      {
        "<F6>",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
      {
        "<F7>",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
      },
    },
  },
}
