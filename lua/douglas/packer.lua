-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.5', -- or, branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  
  -- NerdTree
  use ('preservim/nerdtree')

  -- NerdTree devIcons
  use ('ryanoasis/vim-devicons')
  
  -- NerdCommenter
  use ('preservim/nerdcommenter')

  -- NerdTree git plugin
  use ('Xuyuanp/nerdtree-git-plugin')

  -- UndoTree
  use ('mbbill/undotree')

  -- Auto pairs for ( [ {
  use ('jiangmiao/auto-pairs')

  -- Git Fugitive
  use ('tpope/vim-fugitive')
  use ('tpope/vim-rhubarb')

  -- Elixir-Tools
  use ({ "elixir-tools/elixir-tools.nvim", tag = "stable", requires = { "nvim-lua/plenary.nvim" }})

  use ("onsails/lspkind-nvim")

  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	}
  }
  
  use {
  	'nvim-lualine/lualine.nvim',
  	requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  
  use "lukas-reineke/indent-blankline.nvim"
  
  use {'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd[[colorscheme tokyonight]]	
    end
  }

  use {"MunifTanjim/eslint.nvim", requires = {"jose-elias-alvarez/null-ls.nvim"}}
  		
end)
