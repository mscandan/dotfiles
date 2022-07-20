call plug#begin('~/.config/nvim/autoload/plugged')
	Plug 'gruvbox-community/gruvbox'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-rhubarb' 
	Plug 'fatih/vim-go'
	Plug 'SirVer/ultisnips'
  Plug 'tpope/vim-commentary'
  Plug 'airblade/vim-gitgutter'
	if has("nvim")
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'windwp/nvim-autopairs'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'folke/lsp-colors.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'mbbill/undotree'
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-path' 
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'onsails/lspkind-nvim'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'akinsho/bufferline.nvim'
    Plug 'moll/vim-bbye'
    Plug 'numToStr/Comment.nvim'
    Plug 'tami5/lspsaga.nvim'
    Plug 'navarasu/onedark.nvim'
    Plug 'p00f/nvim-ts-rainbow'
  endif
call plug#end()
