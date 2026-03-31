return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        enabled = false,
        auto_trigger = false,
        keymap = {
          accept = "<C-l>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
        ["*"] = true,
      },
    },
  },
}
