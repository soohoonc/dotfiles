return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")
    wk.setup({
      plugins = {
        marks = true,
        registers = true,
        spelling = {
          enabled = true,
          suggestions = 20,
        },
      },
      win = {
        border = "rounded",
      },
    })

    wk.add({
      { "<leader>f", group = "Find" },
      { "<leader>h", group = "Git hunk" },
      { "<leader>t", group = "Toggle" },
      { "<leader>c", group = "Code" },
      { "<leader>r", group = "Rename" },
    })
  end,
}
