-- This configuration customizes the appearance of all popups that use `vim.ui.select` in Neovim.
-- It utilizes Dressing.nvim to enhance the UI, with Telescope as the backend for the selection menu.
-- The width of the Telescope dropdown is customized, affecting popups such as code actions,
-- buffer selections, and any other prompts that rely on `vim.ui.select`.
return {
  {
    "stevearc/dressing.nvim",
    opts = {
      select = {
        backend = { "telescope", "builtin" }, -- Using telescope first, fallback to builtin
        telescope = require("telescope.themes").get_dropdown({
          layout_config = {
            width = 0.8, -- Adjust the width here, % of the editor width
          },
        }),
      },
    },
  },
}
