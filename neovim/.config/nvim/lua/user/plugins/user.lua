return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
    {
        "kdheepak/lazygit.nvim",
        lazy = false,
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },

    },
}
