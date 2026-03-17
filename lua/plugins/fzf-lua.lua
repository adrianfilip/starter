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

    -- Ctrl-q = trimite TOATE results la quickfix
    -- Ctrl-a = trimite doar cele selectate cu Tab
    -- Ctrl-s / Ctrl-v = deschide în split horizontal / vertical
    opts.actions = vim.tbl_deep_extend("force", opts.actions or {}, {
      files = {
        ["ctrl-q"] = { fn = actions.file_sel_to_qf, prefix = "select-all" },
        ["ctrl-a"] = actions.file_sel_to_qf,
        ["ctrl-s"] = actions.file_split,
        ["ctrl-v"] = actions.file_vsplit,
      },
    })
  end,
}
