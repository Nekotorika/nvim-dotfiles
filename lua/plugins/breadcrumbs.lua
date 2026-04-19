return {
  {
    "Bekaboo/dropbar.nvim",
    event = "BufReadPost",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-treesitter/nvim-treesitter", -- これ追加
    },
  },
}
