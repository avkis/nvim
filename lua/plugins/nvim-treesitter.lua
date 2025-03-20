return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function () 
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { 
				"c", 
				"lua", 
				"vim", 
				"vimdoc", 
				"query", 
				"elixir", 
				"heex", 
				"go", 
				"python", 
				"javascript", 
				"typescript", 
				"tsx", 
				"html", 
				"css",
				"make", 
				"markdown"
			},
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },  

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<Enter>", -- set to `false` to disable one of the mappings
					node_incremental = "<Enter>",
					scope_incremental = fasle,
					node_decremental = "<Backspace>",
				},
			}
		})
	end
}
