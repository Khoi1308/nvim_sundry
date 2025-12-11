return {
	"coffebar/neovim-project",
	opts = {
		projects = { -- define project roots
			"~/Code/*",
			"~/.config/*",
		},
		picker = {
			type = "telescope", -- one of "telescope", "fzf-lua", or "snacks"
		},

		-- Path to store history and sessions
		datapath = vim.fn.stdpath("data"), -- ~/.local/share/nvim/
		-- Load the most recent session on startup if not in the project directory
		last_session_on_startup = true,
		-- Dashboard mode prevent session autoload on startup
		dashboard_mode = false,
		-- Timeout in milliseconds before trigger FileType autocmd after session load
		-- to make sure lsp servers are attached to the current buffer.
		-- Set to 0 to disable triggering FileType autocmd
		filetype_autocmd_timeout = 200,
		-- Keymap to delete project from history in Telescope picker
		forget_project_keys = {
			-- insert mode: Ctrl+d
			i = "<C-d>",
			-- normal mode: d
			n = "d",
		},
	},
	init = function()
		-- enable saving the state of plugins in the session
		vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
	end,
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		-- optional picker
		{ "nvim-telescope/telescope.nvim", tag = "0.1.4" },
		-- optional picker
		{ "folke/snacks.nvim" },
		{ "Shatur/neovim-session-manager" },
	},
	lazy = false,
	priority = 100,
}
