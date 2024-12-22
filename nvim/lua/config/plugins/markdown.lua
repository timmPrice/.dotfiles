return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'echasnovski/mini.icons',
    },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},

    config = function()
        local Enabled = true

        local function toggle_markdown()
            require('render-markdown').setup({})
            if Enabled == false then
                print("enabling markdown rendering")
                require('render-markdown').enable()
                Enabled = true
            else
                print("disabling markdown rendering")
                require('render-markdown').disable()
                Enabled = false
            end
        end

        vim.keymap.set('n', "<leader>tm", toggle_markdown)
    end,
}
