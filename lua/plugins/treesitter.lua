return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "bash", "c", "html", "lua", "markdown", "vim", "vimdoc", "go", "terraform", "css", "dot", "php", "python", "yaml", "json", "javascript", "rasi", "rust", "sxhkdrc", "ruby", "dockerfile" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
