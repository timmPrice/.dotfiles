-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- colors
  use 'aktersnurra/no-clown-fiesta.nvim'
  use 'Mofiqul/vscode.nvim'
  use "craftzdog/solarized-osaka.nvim"
  use "rose-pine/neovim"

  -- telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- treesitter for syntax highlighting
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- LSP ZERO
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
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

-- VimTex
use 'lervag/vimtex'

--mini nvim
use {
    "echasnovski/mini.nvim",
    config = function()
        require('mini.statusline').setup()
    end
}

end)



