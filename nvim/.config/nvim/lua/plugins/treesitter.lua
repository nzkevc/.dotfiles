local treesitter = require("nvim-treesitter")

local parsers = {
  "bash",
  "c",
  "cpp",
  "c_sharp",
  "css",
  "go",
  "html",
  "java",
  "javascript",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "python",
  "rust",
  "tsx",
  "typescript",
  "yaml",
}

treesitter.install(parsers)

-- force mismatched filetype -> parser mappings in mappings.lua if needed
vim.api.nvim_create_autocmd("FileType", {
  pattern = parsers,
  callback = function(args)
    vim.treesitter.start(args.buf)
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    -- vim.wo.foldmethod = 'expr'
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})