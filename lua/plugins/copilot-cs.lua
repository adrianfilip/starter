return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<C-l>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
        ["*"] = true,
      },
    },
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
        ["<C-l>"] = cmp.mapping.confirm({ select = true }), -- ✅ use <C-l> for completion
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = function() end, -- ❌ disable Enter entirely
      })
    end,
  },
}
