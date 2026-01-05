return {
  "petertriho/nvim-scrollbar",
  event = "BufReadPost",
  dependencies = {
    "lewis6991/gitsigns.nvim",
  },
  config = function()
    require("scrollbar").setup({
      handle = {
        blend = 0,
      },
      marks = {
        Search = { color = "#ff9e64" },
        Error = { color = "#db4b4b" },
        Warn = { color = "#e0af68" },
        Info = { color = "#0db9d7" },
        Hint = { color = "#1abc9c" },
        Misc = { color = "#9d7cd8" },
        GitAdd = { color = "#9ece6a" },
        GitChange = { color = "#e0af68" },
        GitDelete = { color = "#db4b4b" },
      },
    })
    require("scrollbar.handlers.gitsigns").setup()
  end,
}
