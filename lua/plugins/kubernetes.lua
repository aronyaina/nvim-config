return {
  "someone-stole-my-name/yaml-companion.nvim",
  ft = { "yaml" },
  opts = {
    builtin_matchers = {
      kubernetes = { enabled = true },
    },
  },
  dependencies = {
    { "neovim/nvim-lspconfig" },
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim" },
  },
  config = function(_, opts)
    require("yaml-companion").setup(opts)
    require("telescope").load_extension("yaml_schema")
  end,
}
