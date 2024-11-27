-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
	  'projekt0n/github-nvim-theme',
	  config = function()
		  require('github-theme').setup {
		  }
		  vim.cmd('colorscheme github_dark')
	  end
  }

  use {
    'sudormrfbin/cheatsheet.nvim',

    requires = {
      {'nvim-telescope/telescope.nvim'},
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  }

  use({
    'olimorris/codecompanion.nvim',
  config = function()
    require('codecompanion').setup()
  end,
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    -- The following are optional:
    { 'MeanderingProgrammer/render-markdown.nvim', ft = { 'markdown', 'codecompanion' } },
  }
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('theprimeagen/vim-be-good')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
    'echasnovski/mini.comment',
    branch = 'stable',
    config = function()
      require('mini.comment').setup()
    end,
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }
end)
