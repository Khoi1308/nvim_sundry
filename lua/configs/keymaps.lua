local keymaps = vim.keymap

keymaps.set("n", "bl", "<cmd>bnext<CR>", { desc = "Next buffer" })
keymaps.set("n", "bj", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

keymaps.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

keymaps.set("n", "<leader>cf", function()
	require("conform").format()
end, { desc = "Code format" })

-- Navigator windows
keymaps.set("n", "<leader>sv", "<C-w>v", { desc = "Split windows by vertically" })
keymaps.set("n", "<leader>sh", "<C-w>s", { desc = "Split windows by horizon" })
keymaps.set("n", "<leader>wx", ":close<CR>", { desc = "Close windows" })

keymaps.set("n", "<leader>wh", "<C-w>h", { desc = "Go to the left window" })
keymaps.set("n", "<leader>wl", "<C-w>h", { desc = "Go to the right window" })
keymaps.set("n", "<leader>wj", "<C-w>j", { desc = "Go to the down window" })
keymaps.set("n", "<leader>wk", "<C-w>k", { desc = "Go to the up window" })

keymaps.set("n", "<leader>e", ":Neotree toggle position=left<CR>", { desc = "Toggle NeoTree" })
keymaps.set("n", "<Leader>fo", "<cmd>Neotree reveal<cr>", { desc = "Reveal file" })
