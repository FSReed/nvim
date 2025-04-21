-- AI Integration, now using CodeCompanion
-- Ensure the following API keys are set as environment variables:
-- ALIYUN_API_KEY, SILICON_API_KEY, and DEEPSEEK_API_KEY
-- For more details, refer to codecompanion/Get_Key.lua

return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- For Action Palette
      "j-hui/fidget.nvim", -- Show response status
    },
    opts = require("plugins.codecompanion.configs"),
    keys = {
      { "<leader>ai", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Actions", mode = { "n", "v" } },
    },
    init = function()
      require("plugins.codecompanion.fidget"):init()
    end,
  },

  -- Use render-markdown to render the chat buffer
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "codecompanion" },
  },
}
