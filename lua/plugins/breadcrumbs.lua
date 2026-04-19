return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  config = function()
    require("lspsaga").setup({
      symbol_in_winbar = {
        enable = true,
        separator = " › ",
        hide_keyword = true,
        show_file = true,
        folder_level = 2,
        color_mode = true,
      },
      ui = {
        code_action = "💡", -- コードアクションのアイコン
        border = "rounded", -- ウィンドウの角を丸くする
      },
    })
  end,
  dependencies = {
    { "echasnovski/mini.icons" },
    { "nvim-treesitter/nvim-treesitter" },
  },
}
