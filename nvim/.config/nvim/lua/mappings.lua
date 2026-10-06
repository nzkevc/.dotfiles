local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- set leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<leader>q", ":q<CR>")
map("n", "<leader>Q", ":q!<CR>")

-- toggle relative vs absolute line numbers
map("n", "<leader>nn", function()
	if vim.wo.relativenumber then
		vim.wo.relativenumber = false
	  vim.wo.number = true
	else
		vim.wo.relativenumber = true
	end
end)

-- force filetype -> parser mapping
vim.filetype.add({
  extension = {
    cs = "c_sharp",
  },
})