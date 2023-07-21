vim.g.mapleader = " "

local keymap = vim.keymap

-- ------------ 插入模式 ----------- --

-- ------------ 视觉模式 ----------- --
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ------------ 正常模式 ----------- --
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- ------------ 插件 --------------- --
keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>") -- nvim-tree

-- nvim-navigation
local nvim_tmux_nav = require("nvim-tmux-navigation")
keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateLeft)
keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateDown)
keymap.set("n", "<C-i>", nvim_tmux_nav.NvimTmuxNavigateUp)
keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
keymap.set("n", "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive)
keymap.set("n", "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext)

