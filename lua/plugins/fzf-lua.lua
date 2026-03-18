return {
  "ibhagwan/fzf-lua",
  opts = {
    winopts = {
      height = 1,
      width = 0.95,
      row = 0,
      col = 0.5,
      relative = "editor",
      preview = {
        layout = "vertical",
        vertical = "up:70%",
        scrollbar = "float",
      },
    },
    fzf_opts = {
      ["--layout"] = "reverse-list",
    },
  },
  config = function(_, opts)
    local fzf = require("fzf-lua")
    fzf.setup(opts)

    -- Add custom actions AFTER setup, so defaults (enter, etc.) are preserved
    local actions = require("fzf-lua.actions")
    fzf.defaults.actions.files["ctrl-q"] = { fn = actions.file_sel_to_qf, prefix = "select-all" }
    fzf.defaults.actions.files["ctrl-a"] = actions.file_sel_to_qf
  end,
}
