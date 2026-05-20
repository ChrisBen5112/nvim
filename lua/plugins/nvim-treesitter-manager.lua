return {
  "romus204/tree-sitter-manager.nvim",
  dependencies = {}, -- tree-sitter CLI must be installed system-wide
  config = function()
    require("tree-sitter-manager").setup({
      ensure_installed = {"c", "cpp", "html", "css", "javascript", "r", "python", "bash", "lua"}, 
      -- border = nil, -- border style for the window (e.g. "rounded", "single"), if nil, use the default border style defined by 'vim.o.winborder'. See :h 'winborder' for more info.
      auto_install = true 
      -- languages = {}, -- override or add new parser sources
    })
  end
}
