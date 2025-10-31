return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			debug = false,
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.tfsec,
				null_ls.builtins.diagnostics.terraform_validate,
				null_ls.builtins.diagnostics.trivy,
				null_ls.builtins.formatting.terraform_fmt,
				null_ls.builtins.diagnostics.actionlint,
				null_ls.builtins.diagnostics.cfn_lint,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.cbfmt,
				null_ls.builtins.diagnostics.hadolint,
				null_ls.builtins.diagnostics.djlint,
				null_ls.builtins.diagnostics.terragrunt_validate,
				null_ls.builtins.formatting.terragrunt_fmt,
				null_ls.builtins.diagnostics.sqlfluff,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.golines,
			},
		})
	end,
}
