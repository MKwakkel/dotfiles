return {
  "tpope/vim-fugitive",
  enabled = true,
  config = function()
    local keymap = vim.keymap -- for conciseness
    --
    keymap.set("n", "<leader>gd", "<cmd>Gvdiffsplit<CR>", { desc = "diff" })
    keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>", { desc = "blame" })
    keymap.set("n", "qq", "<cmd>q<CR>", { desc = "quit" })
  end,
}
