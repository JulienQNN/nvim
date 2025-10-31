return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			auto_install = true,
			ensure_installed = {
				"terraformls",
				"tflint",
				"bashls",
				"cssls",
				"dockerls",
				"dotls",
				"gopls",
				"eslint",
				"html",
				"jsonls",
				"lua_ls",
				"pyright",
				"yamlls",
			},
		},
		config = function(_, opts)
			require("mason").setup()
			require("mason-lspconfig").setup(opts)
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Tu peux aussi boucler sur tous les serveurs Mason si tu veux tout activer :
			for _, server in ipairs(require("mason-lspconfig").get_installed_servers()) do
				vim.lsp.enable(server)
			end
			--------------------------------------------------------------------
			-- Terragrunt LS
			--------------------------------------------------------------------
			local ok, terragrunt_ls = pcall(require, "terragrunt-ls")
			if ok then
				terragrunt_ls.setup({
					cmd_env = {
						-- Pour activer les logs :
						TG_LS_LOG = vim.fn.expand("/tmp/terragrunt-ls.log"),
					},
				})

				if terragrunt_ls.client then
					vim.api.nvim_create_autocmd("FileType", {
						pattern = "hcl",
						callback = function()
							vim.lsp.buf_attach_client(0, terragrunt_ls.client)
						end,
					})
				end
			end
		end,
	},
	{
		"gruntwork-io/terragrunt-ls",
		ft = "hcl",
	},
	{
		"nvim-lua/lsp-status.nvim",
	},
	{
		"onsails/lspkind.nvim",
	},
}
