return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>fe", false },
    -- change a keymap
    { "<leader>fE", false },
    -- add a keymap to browse plugin files
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ action = "show", toggle = true, dir = LazyVim.root() })
      end,
      desc = "Explorer NeoTree (root dir)",
    },
    {
      "<leader>E",
      function()
        require("neo-tree.command").execute({ action = "show", toggle = true, dir = vim.loop.cwd() })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
  },
  opts = {
    filesystem = {
      bind_to_cwd = true,
    },
  },
}
