local plug_path = vim.fn.stdpath('data') .. '/site/autoload/plug.vim'
if vim.fn.empty(vim.fn.glob(plug_path)) == 1 then
  vim.fn.system({ 'curl', '-fLo', plug_path, '--create-dirs',
    'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' })
  vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']

vim.loader.enable()

vim.call('plug#begin')
Plug('nvim-treesitter/nvim-treesitter', {
  ['do'] = ':TSUpdate',
})
Plug('rose-pine/neovim', { ['as'] = 'rose-pine' })
vim.call('plug#end')

require('autocmd')
require('mappings')
require('options')
require('plugins.treesitter')
require('plugins.rose-pine')