return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  config = function()
    local wk = require("which-key")

    wk.register({
      s = {
        name = "split",
        v = { "<C-w>v", "Split vertically" },
        h = { "<C-w>s", "Split horizontally" },
        e = { "<C-w>=", "Equalize" },
        x = { "<cmd>close<cr>", "Close split" },
        m = { "<cmd>MaximizerToggle<cr>", "Toggle Maximize" }
      },
      t = {
        name = "tabs",
        o = { "<cmd>tabnew<cr>", "Open new tab" },
        x = { "<cmd>tabclose<cr>", "Close current tab" },
        n = { "<cmd>tabn<cr>", "Next tab" },
        p = { "<cmd>tabp<cr>", "Prev tab" },
      },
      h = { ":nohl<cr>", "Clear highlights" }      
    }, { prefix = "<leader>" })
  end,
  opts = {}
}
