return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = {
				"rust",
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"svelte",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					node_decremental = "<bs>",
					scope_incremental = false,
				},
			},
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
			auto_install = true,
		})
	end,
}
