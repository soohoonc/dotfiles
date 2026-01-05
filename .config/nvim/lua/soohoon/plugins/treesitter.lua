return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "json", "javascript", "typescript", "tsx", "yaml", "html", "css",
      "markdown", "markdown_inline", "bash", "lua", "vim", "vimdoc",
      "python", "rust", "svelte", "graphql", "dockerfile", "gitignore",
    },
  },
}
