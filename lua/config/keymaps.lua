-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--- :verbose map H //to see what H is mapped to
--- grep -r 'bprevious' . //in ~/.local/share/nvim

-- Set <S-h> to its default behavior (move to the top of the screen)
vim.api.nvim_set_keymap("n", "<S-h>", "H", { noremap = true, silent = true })

-- Set <S-m> to its default behavior (move to the middle of the screen)
vim.api.nvim_set_keymap("n", "<S-m>", "M", { noremap = true, silent = true })

-- Set <S-l> to its default behavior (move to the bottom of the screen)
vim.api.nvim_set_keymap("n", "<S-l>", "L", { noremap = true, silent = true })

-- Toggle diagnostics for the current buffer
vim.keymap.set("n", "<leader>d", function()
  local diagnostics_enabled = vim.diagnostic.is_enabled()
  if diagnostics_enabled then
    vim.diagnostic.enable(false) -- Disable diagnostics for current buffer
    vim.notify("Diagnostics disabled", vim.log.levels.INFO)
  else
    vim.diagnostic.enable(true) -- Enable diagnostics for current buffer
    vim.notify("Diagnostics enabled", vim.log.levels.INFO)
  end
end, { noremap = true, silent = true, desc = "Toggle Diagnostics" })
