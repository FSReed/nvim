-- Modify different API Key names here

local Key = {}

function Key:ali_key()
  return os.getenv("ALIYUN_API_KEY")
end

function Key:siliconflow_key()
  return os.getenv("SILICON_API_KEY")
end

-- function Key:deepseek_key()
--   return os.getenv("DEEPSEEK_API_KEY")
-- end

return Key
