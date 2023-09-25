return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/which-key.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		local wk = require("which-key")

		wk.register({
			f = {
				name = "find", -- optional group name
				f = { "<cmd>Telescope find_files<cr>", "Find file" },
				r = { "<cmd>Telescope oldfiles<cr>", "Open recent file" },
				s = { "<cmd>Telescope live_grep<cr>", "Find string" },
				c = { "<cmd>Telescope grep_string<cr>", "Find string under cursor" },
				b = { "<cmd>Telescope buffers<cr>", "Show buffers" },
			},
		}, { prefix = "<leader>" })
	end,
}
