return {
  {
    "MagicDuck/grug-far.nvim",
    keys = {
      { "<leader>S", function() require("grug-far").open() end, desc = "Search and Replace (grug-far)" },
      { "<leader>sw", function() require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } }) end, desc = "Search current word", mode = "n" },
      { "<leader>sw", function() require("grug-far").with_visual_selection() end, desc = "Search selection", mode = "v" },
      { "<leader>sp", function() require("grug-far").open({ prefills = { paths = vim.fn.expand("%") } }) end, desc = "Search in current file" },
    },
  },
}
