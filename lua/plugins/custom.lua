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

  -- AI Integration, with codecompanion.nvim
  -- Need a siliconflow api as system environment variable
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      adapters = {
        siliconflow = function()
          return require("codecompanion.adapters").extend("openai_compatible", {
            env = {
              url = "https://api.siliconflow.cn",
              api_key = function()
                return os.getenv("SILICON_API_KEY")
              end,
              chat_url = "/v1/chat/completions",
            },
            schema = {
              model = {
                default = "deepseek-ai/DeepSeek-V3",
              },
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "siliconflow",
        },
        inline = {
          adapter = "siliconflow",
        },
      },
    },
    keys = {
      { "<leader>ai", "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion Chat" },
      { "<leader>ai", "<cmd>CodeCompanion<cr>", mode = "v", desc = "CodeCompanion Inline Assistance" },
    },
    config = function(_, opts)
      require("codecompanion").setup(opts)
    end,
  },
}
