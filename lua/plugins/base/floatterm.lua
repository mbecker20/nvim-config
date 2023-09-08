return {
  "voldikss/vim-floaterm",
  config = function()
    local keymap = vim.keymap

    keymap.set("n", "<leader>j", "<cmd>FloatermNew --height=0.8 --width=0.8<cr>", { desc = "Open floaterm" })
    keymap.set("n", "<leader>g", "<cmd>FloatermNew --height=0.8 --width=0.8 lazygit<cr>", { desc = "Open lazygit" })
  end
}
