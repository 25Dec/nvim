return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local palettes = require("catppuccin.palettes").get_palette("mocha")
    local palettesOptions = require("catppuccin").options
    local transparent_bg = palettes.transparent_background and "NONE" or palettesOptions.mantle

    local my_lualine_theme = {
      normal = {
        a = { bg = palettes.blue, fg = palettes.mantle, gui = "bold" },
        b = { bg = palettes.surface0, fg = palettes.blue },
        c = { bg = transparent_bg, fg = palettes.text },
      },
      insert = {
        a = { bg = palettes.green, fg = palettes.base, gui = "bold" },
        b = { bg = palettes.surface0, fg = palettes.green },
        c = { bg = transparent_bg, fg = palettes.overlay0 },
      },
      visual = {
        a = { bg = palettes.mauve, fg = palettes.base, gui = "bold" },
        b = { bg = palettes.surface0, fg = palettes.mauve },
        c = { bg = transparent_bg, fg = palettes.overlay0 },
      },
      command = {
        a = { bg = palettes.peach, fg = palettes.base, gui = "bold" },
        b = { bg = palettes.surface0, fg = palettes.peach },
        c = { bg = transparent_bg, fg = palettes.overlay0 },
      },
      replace = {
        a = { bg = palettes.red, fg = palettes.base, gui = "bold" },
        b = { bg = palettes.surface0, fg = palettes.red },
        c = { bg = transparent_bg, fg = palettes.overlay0 },
      },
      inactive = {
        a = { bg = transparent_bg, fg = palettes.blue },
        b = { bg = transparent_bg, fg = palettes.surface1, gui = "bold" },
        c = { bg = transparent_bg, fg = palettes.overlay0 },
      },
    }

    lualine.setup({
      options = {
        theme = my_lualine_theme,
        disabled_filetypes = {
          "packer",
          "NvimTree",
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = { "progress" },
        lualine_z = {},
      },
    })
  end,
}
