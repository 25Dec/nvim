return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local bufferline = require("bufferline")
    bufferline.setup({
      options = {
        mode = "tabs",
        indicator = {
          style = "underline",
        },
        separator_style = { "", "" },
        offsets = {
          {
            filetype = "NvimTree",
            text = "",
            text_align = "center",
            separator = true,
          },
        },
        groups = {
          items = {
            require("bufferline.groups").builtin.pinned:with({ icon = "" }),
          },
        },
      },
    })
  end,
}
