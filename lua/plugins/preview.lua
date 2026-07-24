return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
    vim.keymap.set(
      "n",
      "<leader>m",
      "<cmd>MarkdownPreviewToggle<CR>",
      { noremap = true, silent = true, desc = "Markdown Preview" }
    )
  end,
}
