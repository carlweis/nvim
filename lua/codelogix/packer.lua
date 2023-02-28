-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorscheme
  use 'cocopon/iceberg.vim'
  use 'vv9k/vim-github-dark'
  use 'tomasiser/vim-code-dark'
  use 'nanotech/jellybeans.vim'
  use 'folke/tokyonight.nvim'
  use 'doums/darcula'
  use 'gruvbox-community/gruvbox'
  use 'scottymoon/vim-twilight'

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      require("rose-pine").setup()
      --vim.cmd('colorscheme rose-pine')
    end
  })

  -- LuaLine

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'nvim-treesitter/playground'

  -- Harpoon
  use('theprimeagen/harpoon')

  -- Undotree
  use('mbbill/undotree')

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

  use 'janko-m/vim-test'
  use 'pangloss/vim-javascript'
  use 'pbrisbin/vim-mkdir'
  use 'slim-template/vim-slim'
  use 'tpope/vim-bundler'
  use 'tpope/vim-endwise'
  use 'tpope/vim-eunuch'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-projectionist'
  use 'tpope/vim-rails'
  use 'tpope/vim-rake'
  use 'tpope/vim-repeat'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-surround'
  use 'vim-ruby/vim-ruby'
  use 'vim-scripts/tComment'
  use 'ngmy/vim-rubocop'
  use 'thoughtbot/vim-rspec'
  use 'christoomey/vim-tmux-runner'
  use 'christoomey/vim-tmux-navigator'
  use 'folke/zen-mode.nvim'
  use 'github/copilot.vim'
end)


--[[
use 'cocopon/iceberg.vim'
use('nanotech/jellybeans.vim')
use 'folke/tokyonight.nvim'
use({
  'rose-pine/neovim',
  as = 'rose-pine',
  config = function()
    require("rose-pine").setup()
    vim.cmd('colorscheme rose-pine')
  end
})
use({
  'cocopon/iceberg.vim',
  as = 'iceberg',
  config = function()
    --require("iceberg").setup()
    vim.cmd('colorscheme iceberg')
  end
})
--]]
