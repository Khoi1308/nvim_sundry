return {
  "rebelot/kanagawa.nvim", 
  branch="master",
  config = function()
    require('kanagawa').setup({
      compile = true, -- Enable compiling the colorscheme
      transparent = false,
      overrides = function(colors)
        return {
          ["@markup.link.label.markdown_inline"] = { link = "Special" },
          ["@markup.link.markdown_inline"] = { link = "WarningMsg" },
        }
      end,
    });
    vim.cmd("colorscheme kanagawa-wave");
  end,

  -- Auto-compile theme when plugin is installed or updated
  -- Ensures Nvim always loads the lastest optimized version
  build = function()
    vim.cmd("KanagawaCompile")
  end
}
