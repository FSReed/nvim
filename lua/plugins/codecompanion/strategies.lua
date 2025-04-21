-- Give user and AI a name
local codecompanion_roles = {
  llm = function(adapter)
    local emoji = "🤖 "
    if adapter.formatted_name:lower() == "deepseek" then
      emoji = "🐋 "
    end
    return emoji .. adapter.formatted_name .. " (" .. adapter.schema.model.default .. ")"
  end,
  user = "Me 🤔",
}

return {
  chat = {
    adapter = "aliyun",
    roles = codecompanion_roles,
  },
  inline = {
    adapter = "siliconflow",
    roles = codecompanion_roles,
  },
  agent = {
    adapter = "aliyun",
    roles = codecompanion_roles,
  },
}
