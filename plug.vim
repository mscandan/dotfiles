call plug#begin('~/.config/nvim/autoload/plugged')
	Plug 'gruvbox-community/gruvbox'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-rhubarb' 
	Plug 'fatih/vim-go'
	Plug 'SirVer/ultisnips'
	if has("nvim")
	Plug 'neovim/nvim-lspconfig'
	Plug 'glepnir/lspsaga.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'windwp/nvim-autopairs'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'folke/lsp-colors.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'mbbill/undotree'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'onsails/lspkind-nvim'
  endif
call plug#end()
