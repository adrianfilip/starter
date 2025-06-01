return {
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()

      -- 🔥 This is essential for lsp_lines to take over the diagnostics display
      vim.diagnostic.config({
        virtual_text = false,
        virtual_lines = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        -- because I use lsp_lines to show the errors on multiple lines, having this active would lead to duplication
        virtual_text = false,
      },
      servers = {
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
