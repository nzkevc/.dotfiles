-- Set background of Normal text to none (transparent)
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })

-- Optionally, set other highlight groups to transparent for a consistent look
-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' }) -- For floating windows
-- vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' }) -- For borders of floating windows
-- vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })       -- For popup menus
-- vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })  -- For the sign column (e.g., git signs)
-- vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })      -- For line numbers
