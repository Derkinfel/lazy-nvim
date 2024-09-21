-- return {
--   "hrsh7th/nvim-cmp",
--   dependencies = {
--     "hrsh7th/cmp-nvim-lsp",
--     "hrsh7th/cmp-buffer",
--     "hrsh7th/cmp-path",
--     "saadparwaiz1/cmp_luasnip",
--   },
--   opts = {
--     completion = {
--       completeopts = "menu,menuone,noinsert,noselect",
--     },
--   },
-- }
--return {
--  "hrsh7th/nvim-cmp",
--  opts = function()
--    local cmp = require("cmp")
--    return {
--      completion = {
--        completeopt = "menu,menuone,noinsert,noselect",
--      },
--      sources = cmp.config.sources({
--        { name = "nvim_lsp" },
--        { name = "luasnip" },
--        { name = "path" },
--      }, {
--        { name = "buffer" },
--      }),
--    }
--  end,
--  --"hrsh7th/nvim-cmp",
--  --opts = {
--  --  completion = {
--  --    completeopts = "menu,menuone,noinsert,noselect",
--  --  },
--  --},
--  --opts = function(_, opts)
--  --  table.insert(opts.completion, { completeopt = "menu,menuone,noinsert,noselect" })
--  --end,
--  -- "hrsh7th/nvim-cmp",
--  -- dependencies = { "hrsh7th/cmp-emoji" },
--  -- ---@param opts cmp.ConfigSchema
--  -- opts = function(_, opts)
--  --   table.insert(opts.sources, { name = "emoji" })
--  -- end,
--}
return {
  "hrsh7th/nvim-cmp",
  cmp = require("cmp"),
  opts = {
    completion = {
      completeopt = "menu,menuone,noinsert,noselect",
    },
    preselect = false,
    mapping = {
      ["<CR>"] = LazyVim.cmp.confirm({ select = false }),
    },
  },
}
