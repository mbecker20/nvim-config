-- return {
-- 	"bluz71/vim-nightfly-guicolors",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd([[colorscheme nightfly]])
-- 	end,
-- }

return {
	"JoosepAlviste/palenightfall.nvim",
	priority = 1000,
	config = function()
		require("palenightfall").setup({})
	end,
	init = function()
		vim.cmd([[colorscheme palenightfall]])
	end,
}

-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("kanagawa").setup({
-- 			colors = {
-- 				theme = {
-- 					all = {
-- 						ui = {
-- 							bg_gutter = "none",
-- 						},
-- 					},
-- 				},
-- 			},
-- 			overrides = function(colors)
-- 				local theme = colors.theme
-- 				return {
-- 					NormalFloat = { bg = "none" },
-- 					FloatBorder = { bg = "none" },
-- 					FloatTitle = { bg = "none" },
--
-- 					NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
--
-- 					LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
-- 					MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
--
-- 					TelescopeTitle = { fg = theme.ui.special, bold = true },
-- 					TelescopePromptNormal = { bg = theme.ui.bg_p1 },
-- 					TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
-- 					TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
-- 					TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
-- 					TelescopePreviewNormal = { bg = theme.ui.bg_dim },
-- 					TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
-- 				}
-- 			end,
-- 		})
-- 	end,
-- 	init = function()
-- 		vim.cmd([[colorscheme kanagawa]])
-- 	end,
-- }
