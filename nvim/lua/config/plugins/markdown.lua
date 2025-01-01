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
        local Enabled = false

        local function toggle_markdown()
            require('render-markdown').setup({})
            if Enabled == false then
                print("enabling markdown rendering")
                require('render-markdown').enable()

                -- enable text wrapping
                vim.cmd("set wrap")
                Enabled = true
            else
                print("disabling markdown rendering")
                require('render-markdown').disable()

                -- enable text wrapping
                vim.cmd("set nowrap")
                Enabled = false
            end
        end

        vim.keymap.set('n', "<leader>tm", toggle_markdown)
    end,
}
