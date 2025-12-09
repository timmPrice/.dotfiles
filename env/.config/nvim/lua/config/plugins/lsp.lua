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
                    "gopls",
                    "ts_ls",
                    "tinymist",
                    "rust_analyzer",
                    "arduino_language_server",
                    "texlab",
                    "rust_analyzer",
                    "verible",
                    "elixirls",
                    "powershell_es",
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
                "gopls",
                "ts_ls",
                "tinymist",
                "rust_analyzer",
                "arduino_language_server",
                "texlab",
                "elixirls",
                -- "powershell_es",
            }) do
                lspconfig[server].setup({
                    capabilities = capabilities,
                })
            end

            lspconfig.elixirls.setup({
                cmd = { vim.fn.stdpath("data") .. "/mason/bin/elixir-ls" },
                capabilities = capabilities,
                filetypes = { "elixir", "eelixir", "heex", "surface" },
                settings = {
                    elixirLS = {
                        dialyzerEnabled = true,
                        dialyzerFormat = "dialyzer",
                        fetchDeps = true,
                        enableTestLenses = true,
                        autoBuild = true,
                        mixEnv = "dev",
                        enableHexDocs = true,
                        suggestSpecs = true,
                        logLevel = "warn",
                    },
                },
            })

            lspconfig.texlab.setup({
                capabilities = capabilities,
                filetypes = { "tex", "plaintex", "bib" },
                root_dir = lspconfig.util.root_pattern(".latexmkrc", ".git", "main.tex"),
                settings = {
                    texlab = {
                        build = {
                            executable = "latexmk",
                            args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
                            onSave = true,
                        },
                        forwardSearch = {
                            executable = "zathura",
                            args = { "--synctex-forward", "%l:1:%f", "%p" },
                        },
                        chktex = {
                            onEdit = false,
                            onOpenAndSave = true,
                        },
                        diagnosticsDelay = 300,
                        latexFormatter = "latexindent",
                        latexindent = {
                            modifyLineBreaks = true,
                        },
                    },
                },
            })

            lspconfig.ts_ls.setup({
                capabilities = capabilities,
                filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx" },
                root_dir = lspconfig.util.root_pattern("tsconfig.json", "package.json", "jsconfig.json", ".git"),
                settings = {
                    typescript = {
                        inlayHints = {
                            includeInlayParameterNameHints = "all", -- show param names
                            includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                            includeInlayFunctionParameterTypeHints = true,
                            includeInlayVariableTypeHints = true,
                            includeInlayPropertyDeclarationTypeHints = true,
                            includeInlayFunctionLikeReturnTypeHints = true,
                            includeInlayEnumMemberValueHints = true,
                        },
                    },
                },
            })

            local pid = vim.fn.getpid()
            local omnisharp_bin = vim.fn.stdpath("data") .. "/mason/bin/omnisharp"

            lspconfig.omnisharp.setup({
                capabilities = capabilities,
                cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
                enable_editorconfig_support = true,
                enable_roslyn_analyzers = true,
                enable_import_completion = true,
                organize_imports_on_format = true,
                enable_decompilation_support = true,
            })

            lspconfig.verible.setup({
                capabilities = capabilities,
                filetypes = { "verilog", "systemverilog" },
                cmd = {
                    'verible-verilog-ls', '--rules_config_search'
                },
            })

            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
                filetypes = { "rust" },
                root_dir = lspconfig.util.root_pattern("Cargo.toml", "rust-project.json", ".git"),
                settings = {
                    ["rust-analyzer"] = {
                        cargo = {
                            allFeatures = true,
                        },
                        inlayHints = {
                            bindingModeHints = { enable = true },
                            chainingHints = { enable = true },
                            closingBraceHints = { enable = true },
                            closureReturnTypeHints = { enable = "always" },
                            lifetimeElisionHints = { enable = "always", useParameterNames = true },
                            parameterHints = { enable = true },
                            reborrowHints = { enable = "always" },
                            typeHints = { enable = true },
                        },
                    },
                },
            })

            lspconfig.tinymist.setup({
                capabilities = capabilities,
                cmd = { "tinymist", },
                filetypes = { "typst" },
                root_dir = lspconfig.util.root_pattern("typst.toml", ".git") or vim.fn.getcwd(),
            })

            lspconfig.tinymist.setup({
                capabilities = capabilities,
                cmd = { "tinymist", },
                filetypes = { "typst" },
                root_dir = lspconfig.util.root_pattern("typst.toml", ".git") or vim.fn.getcwd(),
            })

            lspconfig.arduino_language_server.setup({
                capabilities = capabilities,
                cmd = {
                    "arduino-language-server",
                    "-cli-config", "/home/tim-price/.arduino15/arduino-cli.yaml",
                    "-fqbn", "arduino:avr:uno",
                    "-clangd", "/home/tim-price/.local/share/nvim/mason/bin/clangd"
                },
            })

            lspconfig.clangd.setup({
                capabilities = capabilities,
                cmd = { "clangd", "--fallback-style=none" },
                on_attach = function(client)
                    client.server_capabilities.documentFormattingProvider = false
                end,
            })

            lspconfig.gopls.setup({
                capabilities = capabilities,
                settings = {
                    gopls = {
                        analyses = {
                            simplify = false,
                            unusedparams = true,
                            shadow = true,
                            modernize = false,
                        },
                        staticcheck = true,
                        gofumpt = true,
                    },
                },
            })

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
            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = true,
                update_in_insert = false,
                severity_sort = true,
            })
        end,
    },
}
