return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()

      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "html",
          "css",
          "javascript",
          "typescript",
          "typescriptreact",
          "javascriptreact",
          "json",
          "lua",
        },
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
