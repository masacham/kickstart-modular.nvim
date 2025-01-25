-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

if vim.g.vscode then
else
  -- [[ Install `lazy.nvim` plugin manager ]]
  require 'lazy-bootstrap'

  -- [[ Configure and install plugins ]]
  require 'lazy-plugins'

  -- Set to true if you have a Nerd Font installed and selected in the terminal
  vim.g.have_nerd_font = true
end

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
