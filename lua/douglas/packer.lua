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

  -- Bamboo colorscheme
  use {
	'ribru17/bamboo.nvim',
  	lazy = false,
  	priority = 1000,
  	config = function()
    	require('bamboo').setup {
      		-- Main options --
			  -- NOTE: to use the light theme, set `vim.o.background = 'light'`
			  style = 'vulgaris', -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
			  toggle_style_key = nil, -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
			  toggle_style_list = { 'vulgaris', 'multiplex', 'light' }, -- List of styles to toggle between
			  transparent = false, -- Show/hide background
			  dim_inactive = false, -- Dim inactive windows/buffers
			  term_colors = true, -- Change terminal color as per the selected theme style
			  ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
			  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

			  -- Change code style ---
			  -- Options are italic, bold, underline, none
			  -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
			  code_style = {
				comments = 'italic',
				conditionals = 'italic',
				keywords = 'none',
				functions = 'none',
				namespaces = 'italic',
				parameters = 'italic',
				strings = 'none',
				variables = 'none',
			  },

			  -- Lualine options --
			  lualine = {
				transparent = false, -- lualine center bar transparency
			  },

			  -- Custom Highlights --
			  colors = {}, -- Override default colors
			  highlights = {}, -- Override highlight groups

			  -- Plugins Config --
			  diagnostics = {
				darker = false, -- darker colors for diagnostic
				undercurl = true, -- use undercurl instead of underline for diagnostics
				background = true, -- use background color for virtual text
			  },
    }
    	require('bamboo').load()
  	end,
}

end)
