return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              gofumpt = true,
              -- codelenses = {
              --   gc_details = false,
              --   generate = true,
              --   regenerate_cgo = true,
              --   run_govulncheck = true,
              --   test = true,
              --   tidy = true,
              --   upgrade_dependency = true,
              --   vendor = true,
              -- },
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                ignoredError = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },

              -- Check https://go.dev/gopls/analyzers for more information
              analyses = {},

              usePlaceholders = true,
              -- completeUnimported = true,
              -- staticcheck = true,
              directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
              semanticTokens = true,
            },
          },
        },
      },
    },
  },
}
