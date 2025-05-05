return {
  {
    "kyazdani42/nvim-web-devicons",
    config = function ()
      local status, icons = pcall(require, "nvim-web-devicons")

      if not status then
          return
        end

        icons.setup({
          -- your personnal icons can go here (to override)
          -- DevIcon will be appended to `name`
          override = {},
          -- globally enable default icons (default to false)
          -- will get overriden by `get_icons` option
          default = true,
        })
    end

  },
  {"lewis6991/gitsigns.nvim",
  config = function ()
    local gitsigns_status, gitsigns = pcall(require, "gitsigns")

if not gitsigns_status then
	return
end

gitsigns.setup({})
  end
  },
  {"dinhhuy258/git.nvim"},
  {"tpope/vim-fugitive"}
}
