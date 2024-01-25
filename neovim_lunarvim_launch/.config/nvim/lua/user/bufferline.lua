
local M = {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  }
}

function M.config()
    require('bufferline').setup {
        options = {
            diagnostics = "nvim_lsp",
            separator_style = "slope",
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "left",
                    separator = true
                },
            },
        }
    }
end

return M
