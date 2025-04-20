-- Custom prompts

return {
  ["Improve Writing"] = {
    strategy = "inline",
    opts = {
      modes = { "v" },
      short_name = "grammar",
      ignore_system_prompt = true,
    },
    prompts = {
      {
        role = "user",
        content = [[Review the grammar of the provided text and enhance the writing.]],
      },
    },
  },

  ["Optimize"] = {
    strategy = "inline",
    description = "Optimize code",
    opts = {
      modes = { "v" },
      short_name = "optimize",
    },
    prompts = {
      {
        role = "user",
        content = [[Review the provided code, and optimize the code structure if necessary.]],
      },
    },
  },
}
