return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    { "nvim-telescope/telescope.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim" } }, -- optional: you can also use fzf-lua, snacks, mini-pick instead.
  },
  ft = "python", -- Load when opening Python files
  keys = { { ",v", "<cmd>VenvSelect<cr>" } }, -- Open picker on keymap
  opts = {
    options = {}, -- plugin-wide options
    search = {
        my_conda_base = {
            command = "fd '/bin/python$' /opt/anaconda3 --full-path --color never -E pkgs", -- exclude path with pkgs
            type = "anaconda" -- it's anaconda-style environment (also for miniconda)
        }
    }   -- custom search definitions
  },
}
