return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "saghen/blink.cmp",
            {
                "folke/lazydev.nvim",
                ft = "lua",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            local opts = { noremap = true, silent = true }
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

            local capabilities = require("blink.cmp").get_lsp_capabilities()

            local mason_lspconfig = require("mason-lspconfig")
            mason_lspconfig.setup({
                ensure_installed = {
                    "lua_ls",
                    "omnisharp",
                    "clangd",
                    "pyright",
                    "bashls",
                    "ocamllsp",
                },
                automatic_installation = true,
                automatic_enable = false,
            })

            local lspconfig = require("lspconfig")

            -- Setup default servers
            for _, server in ipairs({
                "lua_ls",
                "omnisharp",
                "pyright",
                "bashls",
            }) do
                lspconfig[server].setup({
                    capabilities = capabilities,
                })
            end

            -- Setup clangd with custom options
            lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = { "clangd", "--fallback-style=none" },
                on_attach = function(client)
                    client.server_capabilities.documentFormattingProvider = false
                end,
            })

            -- Setup ocamllsp with root_dir override
            lspconfig.ocamllsp.setup({
                capabilities = capabilities,
                root_dir = function()
                    return vim.fn.getcwd()
                end,
            })

            -- Format on save if supported
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if not client then
                        return
                    end

                    if client.supports_method("textDocument/formatting") then
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            buffer = args.buf,
                            callback = function()
                                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                            end,
                        })
                    end
                end,
            })
        end,
    },
}
