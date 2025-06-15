local fzf = require("fzf-lua")
local actions = fzf.actions

return {
  "ibhagwan/fzf-lua",
  opts = {
    winopts = {
      preview = {
        layout = "vertical",
      },
    },
    actions = {
      files = {
        -- Open all selected files into buffers
        ["enter"] = actions.file_edit
      },
    },
  },
}
