return {
  "simrat39/rust-tools.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-lua/plenary.nvim",
    "mfussenegger/nvim-dap",
  },
  config = function()
    local rt = require("rust-tools")

    rt.setup({
      server = {
        on_attach = function(_, buffer)
          vim.keymap.set("n", "<leader>rh", rt.hover_actions.hover_actions, { buffer = buffer, desc = "rust hover actions" })
          vim.keymap.set("n", "<leader>rc", rt.code_action_group.code_action_group, { buffer = buffer, desc = "rust code actions" })
        end,
      }
    })
  end
}
