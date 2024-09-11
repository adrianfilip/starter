return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local themes = require("telescope.themes")

      -- Merge existing options with new ones
      opts = vim.tbl_deep_extend("force", opts, {
        defaults = themes.get_dropdown({
          layout_config = {
            width = 0.8, -- Set the width to 80% of the editor width
          },
        }),
        pickers = {
          find_files = {
            theme = "dropdown",
            layout_config = {
              width = 0.8, -- Set the width to 80% of the editor width
            },
          },
        },
      })

      return opts
    end,
  },
}
