return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "bash",
        "markdown",
        "markdown_inline",
        "vim",
        "lua",
        "regex",
      },
    })

    require("nvim-treesitter.install").compilers = { "gcc" }
  end,
}
