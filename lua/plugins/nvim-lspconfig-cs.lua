return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
        virtual_lines = true,
      },
      servers = {
        -- using nixd over nil for nix language server
        nixd = {
          mason = false,
          cmd = { "nixd" },
        }, -- enable nixd
        nil_ls = false, -- disable nil
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              inlayHints = {
                enable = false, -- Disable all inlay hints
                typeHints = false, -- Disable type hints specifically
                parameterHints = false, -- Disable parameter hints specifically
              },
              files = {
                excludeDirs = {
                  "target",
                  ".git",
                  "node_modules",
                },
              },
            },
          },
        },
      },
    },
  },
}
