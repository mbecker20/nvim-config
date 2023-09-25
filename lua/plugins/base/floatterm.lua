return {
	"voldikss/vim-floaterm",
	dependencies = {
		"folke/which-key.nvim",
	},
	config = function()
		local keymap = vim.keymap

		keymap.set("n", "<leader>j", "<cmd>FloatermNew --height=0.8 --width=0.8<cr>", { desc = "Open floaterm" })
		keymap.set("n", "<leader>g", "<cmd>FloatermNew --height=0.8 --width=0.8 lazygit<cr>", { desc = "Open lazygit" })

		require("which-key").register({
			r = {
				name = "run",
				r = { "<cmd>FloatermNew --height=0.8 --width=0.8 run<cr>", "run" },
				s = { "<cmd>FloatermNew --height=0.8 --width=0.8 run --search<cr>", "run (search)" },
			},
		}, { prefix = "<leader>" })
	end,
}
