return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua", "lua-format" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			-- You can customize some of the format options for the filetype (:help conform.format)
			rust = { "rustfmt", lsp_format = "fallback" },
			-- Conform will run the first available formatter
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			json = { "fixjson", "yq" },
			go = { "gofmt", "goimports", "golines" },
			markdown = { "markdownfmt" },
			toml = { "taplo" },
			html = { "superhtml", "html_beautify" },
			tmpl = { "superhtml", "html_beautify" },
			c = { "uncrustify" },
			yaml = { "yq" },
			yml = { "yq" },
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
