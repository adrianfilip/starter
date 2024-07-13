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

-- Setup for fzf-lua - begin
require("fzf-lua").setup({
  winopts = {
    -- other window options here
  },
  keymap = {
    builtin = {
      ["<Tab>"] = "down", -- navigate down
      ["<S-Tab>"] = "up", -- navigate up
      ["<CR>"] = "select", -- select the item
    },
    fzf = {
      ["tab"] = "down", -- navigate down
      ["shift-tab"] = "up", -- navigate up
    },
  },
  files = {
    prompt = "Files❯ ",
    cmd = "fd --type f --hidden --follow --exclude .git",
    git_icons = true,
    file_icons = true,
    color_icons = true,
    actions = {
      ["default"] = require("fzf-lua.actions").file_edit,
      ["ctrl-s"] = require("fzf-lua.actions").file_split,
      ["ctrl-v"] = require("fzf-lua.actions").file_vsplit,
      ["ctrl-t"] = require("fzf-lua.actions").file_tabedit,
      ["ctrl-q"] = require("fzf-lua.actions").file_sel_to_qf,
    },
  },
})

vim.api.nvim_set_keymap("n", "<leader>fF", "<cmd>lua require'fzf-lua'.files()<CR>", { noremap = true, silent = true })

-- Setup for fzf-lua - end
