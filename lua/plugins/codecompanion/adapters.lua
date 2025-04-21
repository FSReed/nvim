-- Use siliconflow, aliyun and deepseek official API Keys

return {
  opts = {
    -- Don't show default adapters
    show_defaults = false,
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
          default = "Qwen/Qwen2.5-72B-Instruct-128K",
          choices = {
            "Qwen/Qwen2.5-72B-Instruct-128K",
            "deepseek-ai/DeepSeek-V3",
            "deepseek-ai/DeepSeek-R1",
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
          default = "qwen-max-latest",
          choices = {
            "deepseek-r1",
            "deepseek-v3",
            "deepseek-r1-distill-qwen-1.5b",
            "qwen-max-latest",
          },
        },
      },
    })
  end,
  deepseek = function()
    return require("codecompanion.adapters").extend("deepseek", {
      formatted_name = "Deepseek",
      env = {
        api_key = function()
          return require("plugins.codecompanion.Get_Key"):deepseek_key()
        end,
      },
      schema = {
        model = {
          default = "deepseek-reasoner",
          choices = {
            "deepseek-chat",
          },
        },
      },
    })
  end,
}
