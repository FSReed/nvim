-- Collect the configs

local opts = {}

opts.display = require("plugins.codecompanion.display")
opts.adapters = require("plugins.codecompanion.adapters")
opts.strategies = require("plugins.codecompanion.strategies")
opts.prompt_library = require("plugins.codecompanion.prompts")

return opts
