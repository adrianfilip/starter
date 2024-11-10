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

-- Keep block cursor in all modes
vim.opt.guicursor = "a:block"
-- Define highlight groups for different modes
vim.api.nvim_set_hl(0, "NormalCursor", { bg = "#9370DB" }) -- Soft violet for normal mode
vim.api.nvim_set_hl(0, "InsertCursor", { bg = "#6A8352" }) -- Dull moss green for insert mode
vim.api.nvim_set_hl(0, "VisualCursor", { bg = "#268bd2" }) -- Rich blue for visual mode
vim.api.nvim_set_hl(0, "ReplaceCursor", { bg = "#ff0000" }) -- Red for replace mode

vim.opt.guicursor = table.concat({
  "n:block-NormalCursor",
  "i-ci:block-InsertCursor",
  "v:block-VisualCursor",
  "r-cr-o:block-ReplaceCursor",
}, ",")

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
