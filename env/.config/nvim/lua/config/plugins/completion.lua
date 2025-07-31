return {
    {
        'L3MON4D3/LuaSnip',
        dependencies = { 'rafamadriz/friendly-snippets' },

        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    },
    {
        'saghen/blink.cmp',
        dependencies = 'rafamadriz/friendly-snippets',

        version = '*',

        opts = {
            keymap = { preset = 'enter' },

            appearance = {
                use_nvim_cmp_as_default = true,
                nerd_font_variant = 'mono'
            },

            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },
            cmdline = {
                sources = {},
            },
            signature = { enabled = true },
        },
    }
}
