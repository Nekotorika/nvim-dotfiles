return {
  "akinsho/toggleterm.nvim",
  version = "*",
  event = "VeryLazy",
  config = function()
    local toggleterm = require("toggleterm")
    local Terminal = require("toggleterm.terminal").Terminal

    toggleterm.setup({
      direction = "float",
      start_in_insert = true,
    })

    toggleterm.setup({
      direction = "float",
      start_in_insert = true,
      float_opts = {
        border = "rounded",
        width = math.floor(vim.o.columns * 0.9),
        height = math.floor(vim.o.lines * 0.9),
      },
    })

    -- lazygit定義
    local lazygit = Terminal:new({
      cmd = "lazygit",
      hidden = true,
      direction = "float",
    })

    -- ここでキー設定（←これが重要）
    vim.keymap.set("n", "<leader>oo", "<cmd>ToggleTerm<cr>", { desc = "Terminal" })

    vim.keymap.set("n", "<leader>gg", function()
      lazygit:toggle()
    end, { desc = "LazyGit" })

    -- ターミナル用
    vim.api.nvim_create_autocmd("TermOpen", {
      pattern = "term://*",
      callback = function()
        local opts = { buffer = 0 }

        vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)

        vim.keymap.set("t", "<leader>o", [[<C-\><C-n><cmd>ToggleTerm<cr>]], opts)
        vim.keymap.set("t", "<leader>g", function()
          lazygit:toggle()
        end, opts)
      end,
    })
  end,
}
