return {
  "ibhagwan/fzf-lua",
  opts = {
    winopts = {
      height = 1, -- 100% of window height
      width = 0.95, -- 95% of window width
      --Just like with col (column) values:
      -- row = 0 positions the window at the top of the screen
      -- row = 0.5 would position it halfway down the screen
      -- row = 1 would position it at the bottom of the screen
      row = 0,
      -- 0.5 it means half of the available free space is on left half on the right
      -- 0.9 means 90% of the available free space is on left and 10% on right
      col = 0.5, -- This centers the window horizontally,
      relative = "editor", -- Make sure it's relative to editor
      preview = {
        layout = "vertical", -- preview and search windows stacked "vertical" or "horizontal"
        vertical = "up:70%", --the file preview is at the top
        -- vertical = "down:70%", --the file preview is at bottom
        scrollbar = "float", --float, border, none, always
      },
    },
    fzf_opts = {
      ["--layout"] = "reverse-list", -- -- search preview under results
    },
  },
}
