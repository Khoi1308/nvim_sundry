return {
	-- cmd = { ... },
	-- filetypes = { ... },
	-- capabilities = {},
	-- settings = {
	--   Lua = {
	--     completion = {
	--       callSnippet = 'Replace',
	--     },
	--     -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
	--     -- diagnostics = { disable = { 'missing-fields' } },
	--   },
	-- },
	settings = {
		Lua = {
			workspace = {
				-- library = vim.api.nvim_get_runtime_file("", true),
				-- checkThirdParty = false,
			},
			telemetry = { enable = false },
		},
	},
}
