--scoped buffers (buffers per tab)
return {
  {
    "tiagovla/scope.nvim",
    config = function()
      require("scope").setup({})
    end,
  },
}
