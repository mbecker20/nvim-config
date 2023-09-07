return {
  "saecki/crates.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "folke/which-key.nvim"
  },
  config = function()
    local crates = require("crates")
    crates.setup()

    local wk = require("which-key")

    wk.register({
      p = {
        name = "crates",
        t = { crates.toggle, "toggle" },
        r = { crates.reload, "reload" },
        v = { crates.show_versions_popup, "show versions" },
        f = { crates.show_features_popup, "show features" },
        d = { crates.show_dependencies_popup, "show dependencies" },
        u = { crates.update_crate, "update crate" },
        a = { crates.update_all_crates, "update all crates" },
        U = { crates.upgrade_crate, "upgrade crate" },
        A = { crates.upgrade_all_crates, "upgrade all crates" },
        e = { crates.expand_plain_crate_to_inline_table, "expand to table" },
        E = { crates.extract_crate_into_table, "extract to table" },
        H = { crates.open_homepage, "open homepage" },
        R = { crates.open_repository, "open repo" },
        D = { crates.open_documentation, "open docs" },
        C = { crates.open_crates_io, "open crates.io" }
      }
    }, { prefix = "<leader>" })

    vim.keymap.set('v', '<leader>pu', crates.update_crates, { desc = "update crates", silent = true })
    vim.keymap.set('v', '<leader>pU', crates.upgrade_crates, { desc = "upgrade crates", silent = true })

  end
}
