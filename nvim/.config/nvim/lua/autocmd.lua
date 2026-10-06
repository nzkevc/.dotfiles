-- install missing plugins in init.lua
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function() 
        local missing_plugins = false
        for _, plug_cfg in pairs(vim.g.plugs or {}) do
            if vim.fn.isdirectory(plug_cfg.dir) == 0 then
                missing_plugins = true
                break
            end
        end

        if missing_plugins then
            vim.cmd('PlugInstall --sync')
        end
    end
})