return {
    {
        'L3MON4D3/LuaSnip',
        dependencies = { 'rafamadriz/friendly-snippets' },

        config = function()
            -- local ls = require("luasnip")
            -- local s = ls.snippet
            -- local t = ls.text_node
            --
            -- ls.add_snippets("all", {
            --     s({
            --         trg = "..",
            --         -- wordTrig = false
            --     }, {
            --         t("·"),
            --     })
            -- })
            -- require("luasnip.loaders.from_vscode").lazy_load()
        end,
    },
    {
        'saghen/blink.cmp',
        dependencies = 'rafamadriz/friendly-snippets',

        version = '*',

        opts = {
            snippets = {
                preset = "luasnip"
            },

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

            keymap = {
                preset = 'default',
                ['<CR>'] = { 'accept', 'fallback' },
            },
        },
    }
}
