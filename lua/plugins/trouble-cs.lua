return {
  {
    "folke/trouble.nvim",
    opts = {
      follow = false,
      preview = {
        type = "split",
        relative = "win",
        position = "right",
        size = 0.5,
        scratch = true,
      },
      keys = {
        ["<cr>"] = function(self)
          local item = self:at().item
          if not item then return end
          -- find main window (non-trouble, non-preview, non-float)
          local win
          for _, w in ipairs(vim.api.nvim_list_wins()) do
            if not vim.w[w].trouble
              and not vim.w[w].trouble_preview
              and vim.api.nvim_win_get_config(w).relative == ""
            then
              win = w
              break
            end
          end
          if not win then
            vim.cmd("above split")
            win = vim.api.nvim_get_current_win()
          end
          local fname = item.filename or vim.api.nvim_buf_get_name(item.buf or 0)
          vim.api.nvim_set_current_win(win)
          vim.cmd("edit " .. vim.fn.fnameescape(fname))
          pcall(vim.api.nvim_win_set_cursor, win, item.pos)
          vim.cmd("norm! zzzv")
        end,
      },
    },
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
}
