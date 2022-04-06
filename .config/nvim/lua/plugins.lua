local cmd = vim.cmd
cmd [[packadd packer.nvim]]

local packer = require 'packer'

return packer.startup(function()
    use 'wbthomason/packer.nvim'
    use 'arcticicestudio/nord-vim'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        run = {
            ':COQdeps',
        },
    }
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require('nvim-treesitter.configs').setup {
            highlight = {
                ensure_installed = {
                    "go",
                    "bash",
                    "lua",
                    "vim",
                    "dockerfile",
                    "make"
                },
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            textobjects = {
                enable = true
            }
        } end
    }
    use 'lukas-reineke/indent-blankline.nvim'
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {
            enable_check_bracket_line = false
        } end
    }
    use { 
        'ray-x/go.nvim', 
        config = function() require('go').setup {} end
    }
    use {
        'kyazdani42/nvim-tree.lua',
        config = function() require('nvim-tree').setup {
            disable_netrw = true,
            hijack_netrw = true,
            view = {
                number = true,
                relativenumber = true,
            },
            filters = {
                custom = { ".git" },
            },
        } end
    }
end)
