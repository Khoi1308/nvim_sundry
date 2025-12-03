return {
  "rebelot/kanagawa.nvim", 
  config = function()
    require('kanagawa').setup({
      compile = true, -- Enable compiling the colorscheme
    });
    vim.cmd("colorscheme kanagawa-wave");
  end,

  -- Auto-compile theme when plugin is installed or updated
  -- Ensures Nvim always loads the lastest optimized version
  build = function()
    vim.cmd("KanagawaCompile")
  end
}
