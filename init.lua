-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Setup for buffer scoping to tabs
require("scope").setup({})

-- Setup for bufferline to show tab numbers
require("bufferline").setup({
  options = {
    --   numbers = "tabnr", -- shows number (of buffer or tabs) in the buffername area
    -- additional configuration settings if needed
  },
})

-- Remap Ctrl+c to behave like Esc
vim.api.nvim_set_keymap("i", "<C-c>", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("v", "<C-c>", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-c>", "<Esc>", { noremap = true })
