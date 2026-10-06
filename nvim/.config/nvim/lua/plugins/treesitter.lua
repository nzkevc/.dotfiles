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

treesitter.setup({
  highlight = {
    enable = true,
  },
})

treesitter.install(parsers)

local filetypes = vim.iter(parsers)
  :filter(function(parser)
    return parser ~= "markdown_inline"
  end)
  :map(vim.treesitter.language.get_filetypes)
  :flatten()
  :unique()
  :totable()

vim.api.nvim_create_autocmd("FileType", {
  pattern = filetypes,
  callback = function(args)
    vim.treesitter.start(args.buf)
    vim.bo[args.buf].indentexpr =
      "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})