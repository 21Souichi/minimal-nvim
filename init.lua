-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- leader key

vim.g.mapleader = " "
vim.g.maplocalleader = " " 

-- Black border fix
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })


-- lazy vim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

-- includes

require("options")
require("keymaps")

