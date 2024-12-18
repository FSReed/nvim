local options = {
    backup = false,
    mouse = "a",
    showtabline = 2,

    number = true,
    relativenumber = true,

    cursorline = true,

    hlsearch = true,
    ignorecase = true,
    incsearch = true,            -- enable search as you type

    expandtab = true,
    tabstop = 4,
    shiftwidth = 4,

    scrolloff = 8,-- Minimal number of screen lines to keep above and below the cursor!
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

