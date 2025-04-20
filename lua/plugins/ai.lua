-- AI Integration, now using CodeCompanion
-- Need aliyun, siliconflow and deepseek api key set as environment variables
-- See codecompanion/Get_Key.lua for the key names

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
      { "<leader>ai", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Actions" },
      { "<leader>ai", "<cmd>CodeCompanionActions<cr>", mode = { "v" }, desc = "CodeCompanion Actions(Inline)" },
    },
    init = function()
      require("plugins.codecompanion.fidget"):init()
    end,
  },

  -- Use render-markdown to render the chat buffer
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "codecompanion" },
  },
}
