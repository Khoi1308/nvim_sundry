local keymaps = vim.keymap.set

keymaps("n", "bl", "<cmd>bnext<CR>", { desc = "Next buffer" })
keymaps("n", "bj", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

keymaps("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

keymaps("n", "<leader>cf", function()
	require("conform").format()
end, { desc = "Code format" })

-- Navigator windows
keymaps("n", "<leader>sv", "<C-w>v", { desc = "Split windows by vertically" })
keymaps("n", "<leader>sh", "<C-w>s", { desc = "Split windows by horizon" })
keymaps("n", "<leader>wx", ":close<CR>", { desc = "Close windows" })

keymaps("n", "<leader>wh", "<C-w>h", { desc = "Go to the left window" })
keymaps("n", "<leader>wl", "<C-w>h", { desc = "Go to the right window" })
keymaps("n", "<leader>wj", "<C-w>j", { desc = "Go to the down window" })
keymaps("n", "<leader>wk", "<C-w>k", { desc = "Go to the up window" })

keymaps("n", "<leader>e", ":Neotree toggle position=left<CR>", { desc = "Toggle NeoTree" })
keymaps("n", "<Leader>fo", "<cmd>Neotree reveal<cr>", { desc = "Reveal file" })

-- Search project
keymaps("n", "<leader>fp", ":NeovimProjectDiscover<CR>", { desc = "Find the most recently accessed projects" })
