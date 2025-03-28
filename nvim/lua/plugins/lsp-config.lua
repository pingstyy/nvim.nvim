return {
    {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.prettier,  -- JavaScript, TypeScript, JSON, etc.
                    null_ls.builtins.formatting.stylua,    -- Lua
                    null_ls.builtins.diagnostics.eslint,   -- JS/TS Linting
                    null_ls.builtins.formatting.black,     -- Python Formatter
                    null_ls.builtins.diagnostics.flake8,   -- Python Linting
                    null_ls.builtins.formatting.shfmt,     -- Bash
                    null_ls.builtins.formatting.goimports, -- Go
                    null_ls.builtins.diagnostics.robocop,
                    null_ls.builtins.formatting.robocop,
                },
            })
            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        end,
    },
    {
        -- :MasonInstallALL
        -- :Mason
        -- :LspInfo
        "williamboman/mason.nvim",
        config = function()
            vim.opt.termguicolors = true -- Enable 24-bit color
            vim.opt.winblend = 10        -- Global transparency

            require("mason").setup({
                ui = {
                    border = "none",
                    winblend = 10,
                },
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                auto_install = true,
                ensure_installed = {
                    "lua_ls",
                    "ts_ls",
                    "angularls",
                    "astro",
                    "bashls",
                    "clangd",
                    "cmake",
                    "cssls",
                    "tailwindcss",
                    "dockerls",
                    "docker_compose_language_service",
                    "yamlls",
                    "taplo",
                    "zls",
                    "gopls",
                    "rust_analyzer",
                    "pyright",
                    "jdtls",
                    "graphql",
                    "prismals",
                    "sqlls",
                    "html",
                    "lemminx",
                    "volar",
                    "vhdl_ls",
                    "verible",
                    "terraformls",
                    "solidity_ls",
                    "phpactor",
                    "nginx_language_server",
                    "marksman",
                    "texlab",
                    "kotlin_language_server",
                    "jsonls",
                    "rome",
                    "astro",
                    "svelte",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            --local lspconfig = require("lspconfig")
            --lspconfig.lua_ls.setup({})
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")

            -- Lua
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                        workspace = { library = vim.api.nvim_get_runtime_file("", true) },
                    },
                },
            })

            -- TypeScript / JavaScript
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
                settings = {
                    typescript = { format = { indentSize = 2 } },
                    javascript = { format = { indentSize = 2 } },
                },
            })

            -- Angular
            lspconfig.angularls.setup({
                capabilities = capabilities,
            })


            -- Assembly
            lspconfig.asm_lsp.setup({
                capabilities = capabilities,
            })

            -- Astro
            lspconfig.astro.setup({
                capabilities = capabilities,
            })

            -- Bash
            lspconfig.bashls.setup({
                capabilities = capabilities,
            })

            -- C / C++
            lspconfig.clangd.setup({
                capabilities = capabilities,
            })

            -- C#
            lspconfig.csharp_ls.setup({
                capabilities = capabilities,
            })

            -- CMake
            lspconfig.cmake.setup({
                capabilities = capabilities,
            })

            -- CSS, Tailwind CSS
            lspconfig.cssls.setup({
                capabilities = capabilities,
            })
            lspconfig.tailwindcss.setup({
                capabilities = capabilities,
            })

            -- Docker
            lspconfig.dockerls.setup({
                capabilities = capabilities,
            })
            lspconfig.docker_compose_language_service.setup({
                capabilities = capabilities,
            })

            -- YAML
            lspconfig.yamlls.setup({
                settings = {
                    yaml = { schemas = { kubernetes = "*.yaml" } },
                },
                capabilities = capabilities,
            })

            -- TOML
            lspconfig.taplo.setup({
                capabilities = capabilities,
            })

            -- Zig
            lspconfig.zls.setup({
                capabilities = capabilities,
            })

            -- Go
            lspconfig.gopls.setup({
                capabilities = capabilities,
                settings = {
                    gopls = {
                        analyses = { unusedparams = true },
                        staticcheck = true,
                    },
                },
            })

            -- Rust
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
                settings = {
                    ["rust-analyzer"] = { checkOnSave = { command = "clippy" } },
                },
            })

            -- Python
            lspconfig.pyright.setup({
                capabilities = capabilities,
            })

            -- Java
            lspconfig.jdtls.setup({
                capabilities = capabilities,
            })

            -- GraphQL
            lspconfig.graphql.setup({
                capabilities = capabilities,
            })

            -- Prisma
            lspconfig.prismals.setup({
                capabilities = capabilities,
            })

            -- SQL
            lspconfig.sqlls.setup({
                capabilities = capabilities,
            })

            -- HTML
            lspconfig.html.setup({
                capabilities = capabilities,
            })

            -- XML
            lspconfig.lemminx.setup({
                capabilities = capabilities,
            })

            -- Vue
            lspconfig.volar.setup({
                capabilities = capabilities,
            })

            -- VHDL / Verilog
            lspconfig.vhdl_ls.setup({
                capabilities = capabilities,
            })
            lspconfig.verible.setup({
                capabilities = capabilities,
            })

            -- Terraform
            lspconfig.terraformls.setup({
                capabilities = capabilities,
            })

            -- Solidity
            lspconfig.solidity_ls.setup({
                capabilities = capabilities,
            })

            -- PHP
            lspconfig.phpactor.setup({
                capabilities = capabilities,
            })

            -- Nginx
            lspconfig.nginx_language_server.setup({
                capabilities = capabilities,
            })

            -- Markdown
            lspconfig.marksman.setup({
                capabilities = capabilities,
            })

            -- LaTeX
            lspconfig.texlab.setup({
                capabilities = capabilities,
            })

            -- Kotlin
            lspconfig.kotlin_language_server.setup({
                capabilities = capabilities,
            })

            -- JSON
            lspconfig.jsonls.setup({
                capabilities = capabilities,
            })

            -- JSX / TSX
            lspconfig.ts_ls.setup({
                capabilities = capabilities,
            }) -- Same as TypeScript

            -- Astro
            lspconfig.astro.setup({
                capabilities = capabilities,
            })

            -- HTMX
            lspconfig.htmx.setup({
                capabilities = capabilities,
            })

            -- Svelte
            lspconfig.svelte.setup({
                capabilities = capabilities,
            })

            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
            vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
            vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format document" })
        end,
    },
}
