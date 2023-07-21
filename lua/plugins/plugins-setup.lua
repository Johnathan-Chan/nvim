-- 自动安装
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- 自动保存
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- 添加插件
  use 'folke/tokyonight.nvim' -- 主题
  
  -- 状态栏
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- 目录树
  use {
    'nvim-tree/nvim-tree.lua',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- 窗口定位
  use 'alexghergh/nvim-tmux-navigation'
  
  -- 语法高亮
  use 'nvim-treesitter/nvim-treesitter'
  
  -- 括号区分
  use 'HiPhish/rainbow-delimiters.nvim'

  -- lsp语法补全
  use {
    'williamboman/mason.nvim',
    run = ":MasonUpdate"
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
