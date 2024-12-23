return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            'saghen/blink.cmp',
            {
                "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
        },
        config = function()
            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

            local capabilities = require('blink.cmp').get_lsp_capabilities()

            local mason_lspconfig = require("mason-lspconfig")

            mason_lspconfig.setup({
                ensure_installed = { "lua_ls", "pyright", "omnisharp", "clangd", "ocamllsp", "sqls", "gopls" },
                automatic_installation = true,
            })

            require("lspconfig").lua_ls.setup { capabilities = capabilities }
            require("lspconfig").pyright.setup { capabilities = capabilities }
            require("lspconfig").omnisharp.setup { capabilities = capabilities }
            require("lspconfig").clangd.setup { capabilities = capabilities }
            require("lspconfig").ocamllsp.setup {
                capabilities = capabilities,
                root_dir = function()
                    return vim.fn.getcwd() -- This makes the current directory the root for LSP
                end,
            }
            require("lspconfig").sqls.setup { capabilities = capabilities }
            require("lspconfig").gopls.setup { capabilities = capabilities }

            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if not client then return end

                    if client.supports_method('textDocument/formatting') then
                        -- Format current buffer on save
                        vim.api.nvim_create_autocmd('BufWritePre', {
                            buffer = args.buf,
                            callback = function()
                                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                            end
                        })
                    end
                end,
            })
        end,
    },
}