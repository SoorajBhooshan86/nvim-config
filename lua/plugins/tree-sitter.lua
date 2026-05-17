return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  opts = {
    ensure_installed = { "lua", "c", "cpp", "bash", "markdown" },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
