vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Gruvbox
    use { 'morhetz/gruvbox' }

	-- Better escape
	use { 'max397574/better-escape.nvim' }

	--Lualine
	use { 'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- Nvim Tree
	use { 'nvim-tree/nvim-tree.lua',
	  requires = { 'nvim-tree/nvim-web-devicons' },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	-- Mason and lspconfig
	use {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
	}

	-- Indent Blankline
	use { 'lukas-reineke/indent-blankline.nvim' }
	
	-- MarkdownPreview
	use{ 'iamcco/markdown-preview.nvim',
		run = function() vim.fn["mkdp#util#install"]() end
	}

	-- VimSpector
	use { 'puremourning/vimspector' }

end)
