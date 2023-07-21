require('nvim-treesitter.configs').setup({
  ensure_installed = { "vim", "bash", "c", "cpp", "cmake", "diff", "dockerfile", "git_config",
                        "git_rebase", "gitattributes", "gitcommit", "gitignore", "make", "php",
                        "javascript", "json", "sql", "lua", "python", "go", "gomod", "gosum", "java",
                      "ruby", "rust", "css", "scss", "typescript", "vue", "yaml"},


  hightlight = { enable = true },
  indent = { enable = true },

  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
})
