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
-- replace mode is a subset of insert so I can't remap it

-- don't highlight the current line
vim.opt.cursorline = false

-- Define highlight groups for different modes
vim.api.nvim_set_hl(0, "NormalCursor", { bg = "#FFFF00" })
vim.api.nvim_set_hl(0, "InsertCursor", { bg = "#FFFF00" })
vim.api.nvim_set_hl(0, "VisualCursor", { bg = "#268bd2" })
vim.api.nvim_set_hl(0, "ReplaceCursor", { bg = "#ff0000" })

-- Set cursor shapes and colors for different modes
vim.opt.guicursor = table.concat({
  "n:block-NormalCursor", -- Block cursor for normal mode
  "i-ci:ver25-InsertCursor", -- Vertical bar (25% width) for insert mode
  "v:block-VisualCursor", -- Block for visual mode
  "r-cr:hor20-ReplaceCursor", -- Horizontal line (20% height) for replace mode
  "o:hor50", -- Horizontal line (50% height) for operator pending mode
}, ",")

-- no color change for the backgroud and text of the word the cursor is on
vim.cmd([[
  highlight LspReferenceText guibg=NONE guifg=NONE
  highlight LspReferenceRead guibg=NONE guifg=NONE
  highlight LspReferenceWrite guibg=NONE guifg=NONE
]])

-- Show diagnostics in bottom window
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, { desc = "Show Diagnostics in Location List" })
