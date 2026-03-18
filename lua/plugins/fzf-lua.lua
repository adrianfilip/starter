return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    local actions = require("fzf-lua.actions")

    opts.winopts = vim.tbl_deep_extend("force", opts.winopts or {}, {
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
    })

    opts.fzf_opts = vim.tbl_deep_extend("force", opts.fzf_opts or {}, {
      ["--layout"] = "reverse-list",
    })

    -- Adauga actiuni fara a suprascrie defaults (enter, etc.)
    opts.actions = opts.actions or {}
    opts.actions.files = opts.actions.files or {}
    opts.actions.files["ctrl-q"] = { fn = actions.file_sel_to_qf, prefix = "select-all" }
    opts.actions.files["ctrl-a"] = actions.file_sel_to_qf
    opts.actions.files["ctrl-s"] = actions.file_split
    opts.actions.files["ctrl-v"] = actions.file_vsplit
  end,
}
