return {
    -- Official GitHub Copilot plugin
    {
        "github/copilot.vim",
        event = "InsertEnter", -- Load the plugin when entering Insert mode
        config = function()
            -- Optionally configure key mappings or other settings here
            vim.g.copilot_no_tab_map = true -- Disable default <Tab> mapping
            vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")',
                { expr = true, silent = true, noremap = true })
        end,
    },
}
