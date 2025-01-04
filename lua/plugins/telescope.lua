return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>,",
      "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
      desc = "Switch Buffer",
    },
    { "<leader>/", LazyVim.pick("live_grep"), desc = "Grep (root dir)" },
    { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
    { "<leader><space>", LazyVim.pick("files"), desc = "Find Files (root dir)" },
    -- find
    { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    { "<leader>fc", LazyVim.pick.config_files(), desc = "Find Config File" },
    {
      "<leader>fE",
      LazyVim.pick("files", { cwd = "/d/notes" }),
      desc = "Find Files (notes dir)",
    },
    {
      "<leader>fe",
      LazyVim.pick("files", { cwd = "/d/prog" }),
      desc = "Find Files (programming dir)",
    },
    {
      "<leader>ft",
      LazyVim.pick("files", { cwd = "/home/derkinfel/" }),
      desc = "Find Files (user home dir)",
    },
    {
      "<leader>fT",
      LazyVim.pick("files", { cwd = "/home/derkinfel/.config" }),
      desc = "Find Files (.config dir)",
    },
    {
      "<leader>fd",
      LazyVim.pick("files", { cwd = "/usr/local/bin/" }),
      desc = "Find Files (/usr/local/bin)",
    },
    {
      "<leader>fD",
      LazyVim.pick("files", { cwd = "/bin" }),
      desc = "Find Files (/bin)",
    },
  },
}
