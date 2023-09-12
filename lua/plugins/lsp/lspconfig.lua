return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		"folke/which-key.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local wk = require("which-key")

		local opts = { noremap = true, silent = true }
		local on_attach = function(_client, bufnr)
			opts.buffer = bufnr
			-- set keybinds

			wk.register({
				l = {
					name = "lsp",
					S = { ":LspRestart<cr>", "Restart LSP" },
					R = { "<cmd>Telescope lsp_references<cr>", "References" },
					i = { "<cmd>Telescope lsp_implementations<cr>", "Implementations" },
					t = { "<cmd>Telescope lsp_type_definitions<cr>", "Type Definitions" },
					p = { "<cmd>Telescope diagnostics bufnr=0<cr>", "Problems" },
					P = { "<cmd>Telescope diagnostics<cr>", "All Problems" },
					h = { vim.lsp.buf.hover, "Hover menu" },
					c = { vim.lsp.buf.code_action, "Code Actions" },
					r = { vim.lsp.buf.rename, "Rename Symbol" },
					l = { vim.diagnostic.open_float, "Line Diagnostics" },
					f = { vim.lsp.buf.format, "Format" },
					d = {
						"<cmd>tab split | lua vim.lsp.buf.definition()<cr>",
						"Go to Definition",
					},
					D = {
						"<cmd>vsp | lua vim.lsp.buf.definition()<cr>",
						"Split to Definition",
					},
				},
			}, { prefix = "<leader>", buffer = bufnr, silent = true, noremap = true })

			opts.desc = "Go to previous diagnostic"
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

			opts.desc = "Go to next diagnostic"
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()

		-- Change the Diagnostic symbols in the sign column (gutter)
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		lspconfig["rust_analyzer"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["dockerls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["tsserver"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["html"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["cssls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["tailwindcss"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["pyright"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})
	end,
}
