local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.clipboard:append("unnamedplus")

opt.cursorline = true

opt.showmode = false -- Because it's already in the status line

opt.expandtab = true -- convert tabs to spaces
opt.shiftwidth = 2 -- Amount to indent with << and >>
opt.tabstop = 2 -- How many spaces are shown per Tab
opt.softtabstop = 2 -- How many spaces are applied when pressing Tab/Backspace

opt.smarttab = true
opt.smartindent = true
opt.autoindent = true -- Keep identation from previous line

opt.undofile = true -- Store undos between sessions
opt.breakindent = true -- Enable break indent

-- Search charaters that don't care uppercase/lowercase
opt.ignorecase = true 
opt.smartcase = true

opt.signcolumn = "yes" -- Keep signcolumn on by default

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor

-- Highlight text for some time after yanking
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("YankHighLight", {clear= true}),
  pattern = "*",
  callback = function()
    vim.highlight.on_yank()
  end,
  desc = "Highlight yank",
})

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { trail = "·", nbsp = "␣" }

-- Disable commandline until it is needed
opt.cmdheight = 0
