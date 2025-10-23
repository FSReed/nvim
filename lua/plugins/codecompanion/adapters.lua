-- Use siliconflow, aliyun and deepseek official API Keys

return {
  opts = {
    -- Don't show default adapters
    show_defaults = false,
    show_model_choices = true,
  },
  siliconflow = function()
    return require("codecompanion.adapters").extend("openai_compatible", {
      formatted_name = "SiliconFlow",
      env = {
        url = "https://api.siliconflow.cn",
        api_key = function()
          return require("plugins.codecompanion.Get_Key"):siliconflow_key()
        end,
        chat_url = "/v1/chat/completions",
      },
      schema = {
        model = {
          default = "moonshotai/Kimi-K2-Instruct-0905",
          choices = {
            -- "Qwen/Qwen2.5-72B-Instruct-128K",
            -- "deepseek-ai/DeepSeek-V3",
            -- "deepseek-ai/DeepSeek-R1",
            "deepseek-ai/DeepSeek-V3.1",
            "moonshotai/Kimi-K2-Instruct-0905",
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
          return require("plugins.codecompanion.Get_Key"):ali_key()
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
          default = "qwen3-max-preview",
          choices = {
            -- "deepseek-r1",
            -- "deepseek-v3",
            -- "deepseek-r1-distill-qwen-1.5b", -- Free, for test
            -- "qwen-max",
            -- "qwen-plus",
            "qwen3-max-preview",
            "deepseek-v3.2-exp",
            "Moonshot-Kimi-K2-Instruct",
            -- "qwen-max-latest",
            -- "Moonshot-Kimi-K2-Instruct",
            -- "qwq-plus",
            -- "qwq-plus-latest",
            -- "qwen-max-2025-01-25",
            -- "qwen-max-0919",
            -- "qwen-max-0428",
            -- "qwen-max-0403",
          },
        },
      },
    })
  end,
  deepseek = function()
    return require("codecompanion.adapters").extend("deepseek", {})
  end,
  gemini = function()
    return require("codecompanion.adapters").extend("gemini", {
      schema = {
        model = {
          default = "gemini-2.5-flash",
          choices = {
            "gemini-2.5-flash",
            "gemini-2.5-pro",
          },
        },
      },
    })
  end,
}
