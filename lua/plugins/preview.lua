return {
  "iamcco/markdown-preview.nvim",
  priority = 1000,
  lazy = false,
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  config = function()
    vim.keymap.set(
      "n",
      "<leader>m",
      "<cmd>MarkdownPreviewToggle<CR>",
      { noremap = true, silent = true, desc = "Markdown Preview" }
    )
  end,
}
