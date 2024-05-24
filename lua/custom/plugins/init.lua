-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('bufferline').setup {}
    end,
  },
  {
    'mfussenegger/nvim-dap',
    version = '*',
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    init = function()
      -- Configure rustaceanvim here
      -- vim.g.rustaceanvim = {}
    end,
    lazy = false, -- This plugin is already lazy
  },
  {
    'ThePrimeagen/harpoon',
    version = '*',
    dependencies = 'ThePrimeagen/harpoon',
  },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    keys = {
      {
        '<leader>nt',
        function()
          vim.cmd [[NvimTreeToggle]]
        end,
        mode = { 'n', 't' },
        desc = '[N]vim-tree [T]oggle',
      },
    },
    config = function()
      require('nvim-tree').setup {}
    end,
  },
  {
    'rust-lang/rust.vim',
    ft = 'rust',
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'onedark'
    end,
  },
}
