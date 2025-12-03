return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {"c", "lua", "vim", "vimdoc", "markdown", "css", "go", "python", "bash", "java", "javascript", "typescript", "html", "css"}, 
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<leader><leader>", -- [Start selection]
					node_incremental = "<leader>si", -- [Selection incremental]
					scope_incremental = false,
					node_decremental = "<leader>sd", -- [Selection decremental]
				},
			},
		})
	end
}
-- Type =g
