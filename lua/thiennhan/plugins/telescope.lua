return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    "nvim-tree/nvim-web-devicons",
    "junegunn/fzf.vim",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local keymap = vim.keymap

    keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Lists files in current working directory (cwd)" })
    keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Searches for the string under cursor in cwd" })
    keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Search for a string in cwd" })

    telescope.load_extension("fzf")
  end,
}
