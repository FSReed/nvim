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
  -- With aliyun and siliconflow api key
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
        aliyun = function()
          return require("codecompanion.adapters").extend("openai_compatible", {
            env = {
              url = "https://dashscope.aliyuncs.com",
              api_key = function()
                return os.getenv("ALIYUN_API_KEY")
              end,
              chat_url = "/compatible-mode/v1/chat/completions",
            },
            schema = {
              model = {
                default = "deepseek-v3",
              },
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "aliyun",
        },
        inline = {
          adapter = "aliyun",
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
