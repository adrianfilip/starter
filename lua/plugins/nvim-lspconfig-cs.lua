return {

  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        -- because I use lsp_lines to show the errors on multiple lines, having this active would lead to duplication
        virtual_text = false,
      },
    },
  },
}
