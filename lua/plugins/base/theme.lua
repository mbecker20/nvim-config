return {
	"bluz71/vim-nightfly-guicolors",
	-- "rebelot/kanagawa.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		vim.cmd([[colorscheme nightfly]])
		-- vim.cmd([[colorscheme kanagawa]])
	end,
}
