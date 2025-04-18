-- AI Integration, now using CodeCompanion
-- Need aliyun and siliconflow api key

-- Give user and AI a name
local codecompanion_roles = {
  llm = function(adapter)
    return "🤖 " .. adapter.formatted_name .. " (" .. adapter.schema.model.default .. ")"
  end,
  user = "Me 🤔",
}

return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "j-hui/fidget.nvim",
    },
    opts = {
      display = {
        chat = {
          intro_message = "✨ Press `?` for help. Press 'ga' to choose model.",
        },
      },
      adapters = {
        siliconflow = function()
          return require("codecompanion.adapters").extend("openai_compatible", {
            formatted_name = "SiliconFlow",
            env = {
              url = "https://api.siliconflow.cn",
              api_key = function()
                return os.getenv("SILICON_API_KEY")
              end,
              chat_url = "/v1/chat/completions",
            },
            schema = {
              model = {
                default = "Qwen/Qwen2.5-72B-Instruct-128K",
                choices = {
                  "Qwen/Qwen2.5-72B-Instruct-128K",
                  "deepseek-ai/DeepSeek-V3",
                },
              },
            },
          })
        end,
        aliyun = function()
          return require("codecompanion.adapters").extend("openai_compatible", {
            formatted_name = "Aliyun",
            env = {
              url = "https://dashscope.aliyuncs.com",
              api_key = function()
                return os.getenv("ALIYUN_API_KEY")
              end,
              chat_url = "/compatible-mode/v1/chat/completions",
            },
            schema = {
              model = {
                order = 1,
                mapping = "parameters",
                type = "enum",
                desc = "ID of the model to use. See the model endpoint compatibility table for details on which models work with the Chat API.",
                ---@type string|fun(): string
                default = "deepseek-v3",
                choices = {
                  "deepseek-v3",
                  "deepseek-r1-distill-llama-70b",
                  "deepseek-r1-distill-qwen-1.5b",
                },
              },
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "aliyun",
          roles = codecompanion_roles,
        },
        inline = {
          adapter = "aliyun",
          roles = codecompanion_roles,
        },
      },
    },
    keys = {
      { "<leader>ai", "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion Chat" },
      { "<leader>ai", "<cmd>CodeCompanion<cr>", mode = "v", desc = "CodeCompanion Inline Assistance" },
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
