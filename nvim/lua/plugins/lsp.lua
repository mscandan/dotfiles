return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v2.x",
  dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" },       -- Required
		{ "williamboman/mason.nvim" },     -- Optional
		{ "williamboman/mason-lspconfig.nvim" }, -- Optional
		{ "lukas-reineke/lsp-format.nvim" },
		{ "nvim-treesitter/nvim-treesitter-context" },
		{ "nvimtools/none-ls.nvim" },
		{ "jay-babu/mason-null-ls.nvim" },

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" }, -- Required
		{ "hrsh7th/cmp-nvim-lsp" }, -- Required
		{ "L3MON4D3/LuaSnip" }, -- Required
	},

	config = function()
		local lsp_status, lsp = pcall(require, "lsp-zero")

		if not lsp_status then
			return
		end

		lsp.preset("recommended")

		lsp.ensure_installed({
			"ts_ls",
			"eslint",
			"gopls",
			"rust_analyzer",
			"lua_ls",
			"yamlls",
			"cssls",
		})

		-- Fix Undefined global 'vim'
		lsp.nvim_workspace()

		local cmp_status, cmp = pcall(require, "cmp")
		if not cmp_status then
			return
		end

		local cmp_select = { behavior = cmp.SelectBehavior.Select }
		local cmp_mappings = lsp.defaults.cmp_mappings({
			["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
			["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
			["<C-y>"] = cmp.mapping.confirm({ select = true }),
			["<C-Space>"] = cmp.mapping.complete(),
		})

		cmp_mappings["<Tab>"] = nil
		cmp_mappings["<S-Tab>"] = nil

		lsp.setup_nvim_cmp({
			mapping = cmp_mappings,
		})

		lsp.set_preferences({
			suggest_lsp_servers = false,
		})

		lsp.set_sign_icons({
			error = " ",
			warn = " ",
			info = " ",
			hint = " ",
		})

		lsp.on_attach(function(client, bufnr)
			local opts = { buffer = bufnr, remap = false }

			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover()
			end, opts)
			vim.keymap.set("n", "<leader>vws", function()
				vim.lsp.buf.workspace_symbol()
			end, opts)
			vim.keymap.set("n", "<leader>vd", function()
				vim.diagnostic.open_float()
			end, opts)
			vim.keymap.set("n", "<C-j>", function()
				vim.diagnostic.goto_next()
			end, opts)
			vim.keymap.set("n", "<C-k>", function()
				vim.diagnostic.goto_prev()
			end, opts)
			vim.keymap.set("n", "<leader>ca", function()
				vim.lsp.buf.code_action()
			end, opts)
			vim.keymap.set("n", "<leader>rn", function()
				vim.lsp.buf.rename()
			end, opts)
			vim.keymap.set("i", "<C-h>", function()
				vim.lsp.buf.signature_help()
			end, opts)
			vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
			vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
		end)

		lsp.format_on_save({
			servers = {
				["null-ls"] = {
					"html",
					"javascript",
					"typescript",
					"prettier",
					"json",
					"lua",
					"typescriptreact",
					"javascriptreact",
					"scss",
					"css",
					"rust",
				},
			},
		})

		lsp.setup()

		vim.diagnostic.config({
			virtual_text = true,
		})
	end
}
