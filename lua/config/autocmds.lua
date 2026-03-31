-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    -- show triple backticks in markdown
    vim.opt_local.conceallevel = 0
  end,
})

-- don't highlight the current line
vim.opt.cursorline = false

-- no color change for the background and text of the word the cursor is on
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.cmd([[
      highlight LspReferenceText guibg=NONE guifg=NONE
      highlight LspReferenceRead guibg=NONE guifg=NONE
      highlight LspReferenceWrite guibg=NONE guifg=NONE
    ]])
  end,
})
vim.cmd([[
  highlight LspReferenceText guibg=NONE guifg=NONE
  highlight LspReferenceRead guibg=NONE guifg=NONE
  highlight LspReferenceWrite guibg=NONE guifg=NONE
]])
