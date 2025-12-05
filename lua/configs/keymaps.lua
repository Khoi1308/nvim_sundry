vim.keymap.set("n", "gl", "<cmd>bnext<CR>", { desc = "Next buffer" })

vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format()
end, { desc = "Code format" })
