return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "bash", "c", "html", "lua", "markdown", "vim", "vimdoc", "go", "terraform", "css", "dot", "php", "python", "yaml", "json", "javascript", "rasi", "rust", "sxhkdrc", "dockerfile", "ruby", "fish" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
  event = { "BufReadPre" },
  opts = function(_, opts)
    return vim.tbl_deep_extend("force", opts, {
      autotag = {
        enable = true,
      }
    })
  end,
}
