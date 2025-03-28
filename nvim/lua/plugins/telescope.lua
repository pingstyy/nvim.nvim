return {
    {'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        require("telescope").setup({
              defaults = {
                borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" }, -- Thin single-line border
                winblend = 0, -- Fully transparent
                layout_config = {
                  prompt_position = "top",
                },
                sorting_strategy = "ascending",
              }})
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#000000", bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#000000", bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#000000", bg = "NONE" })
        vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "NONE" })  -- Transparent preview
        vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#000000", bg = "NONE" })  -- Thin border color

    end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            -- This is your opts table
            require("telescope").setup {
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                  }
                }
              }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
