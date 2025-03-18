return {
    { "hrsh7th/nvim-cmp" },
    {
        "kiyoon/jupynium.nvim",
        build = "pip3 install --user .",
        config = function()
            local cmp = require("cmp")

            local compare = cmp.config.compare

            cmp.setup({
                sources = {
                    { name = "jupynium", priority = 1000 }, -- Consider higher priority than LSP
                    { name = "nvim_lsp", priority = 100 },
                    -- Add more sources as needed
                },
                sorting = {
                    priority_weight = 1.0,
                    comparators = {
                        compare.score, -- Jupyter kernel completion before LSP
                        compare.recently_used,
                        compare.locality,
                    },
                },
            })

            -- Additional setup or integration with jupynium
        end
    },

    -- Optional UI plugins
    { "stevearc/dressing.nvim" }
}
