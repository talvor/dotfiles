return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- event = "VimEnter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "tsx",
        "typescript",
      })
    end,
  },
}
