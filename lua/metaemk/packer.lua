-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { 
          {'nvim-lua/plenary.nvim'}
      }
  }

use({
  'rose-pine/neovim',
  as = 'rose-pine',
  config = function()
      vim.cmd('colorscheme rose-pine')
  end
})

-- use ('Mofiqul/dracula.nvim')
--use 'navarasu/onedark.nvim'
--use "EdenEast/nightfox.nvim"
use ('simrat39/symbols-outline.nvim')
use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('mbbill/undotree')
use('tpope/vim-fugitive')

use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
}

use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

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

use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}

use {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}

use { "folke/todo-comments.nvim" }

use('RRethy/vim-illuminate')

use ('nvim-treesitter/nvim-treesitter-context')

use {
    'stevearc/aerial.nvim',
    config = function() require('aerial').setup() end
}

use { 'nvim-lualine/lualine.nvim' }

use 'nvim-tree/nvim-web-devicons'

use "lukas-reineke/indent-blankline.nvim"

use {
    "danymat/neogen",
    requires = "nvim-treesitter/nvim-treesitter",
}

-- use {
--     'folke/noice.nvim',
--     requires = {
--         {'MunifTanjim/nui.nvim'},
--         {'rcarriga/nvim-notify'}
--     }
-- }

use 'ggandor/leap.nvim'
use { 'numToStr/Comment.nvim' }
use { "zbirenbaum/copilot.lua" }
use { "github/copilot.vim"}

use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

end)
