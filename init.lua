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
-- replace mode (entered by R) is a subset of insert so I can't remap it

-- don't highlight the current line
vim.opt.cursorline = false

-- no color change for the backgroud and text of the word the cursor is on
vim.cmd([[
  highlight LspReferenceText guibg=NONE guifg=NONE
  highlight LspReferenceRead guibg=NONE guifg=NONE
  highlight LspReferenceWrite guibg=NONE guifg=NONE
]])

-- Show diagnostics in bottom window
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Show Diagnostics in Location List" })
