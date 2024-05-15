return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local powershell_options = {
      shell = "pwsh",
      shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
      shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
      shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
      shellquote = "",
      shellxquote = "",
    }

    for option, value in pairs(powershell_options) do
      vim.opt[option] = value
    end

    require("toggleterm").setup({
      shell = "pwsh.exe",
      open_mapping = [[<c-t>]],
      direction = "float",
      hide_numbers = true,
      float_opts = {
        border = "single",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })
  end,
}
