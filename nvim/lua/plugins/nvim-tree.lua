return  {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
        },
    config = function()
        -- vim.keymap.set('n', '<leader>e" , 'NvimTree')


        -- Nvim-Tree
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })  -- Remove background
        vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" }) -- For inactive nvim-tree window
        vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "NONE", fg = "NONE" }) -- Hide `~` symbols

        require("nvim-tree").setup({
        renderer = {
            highlight_opened_files = "all",
            highlight_git = true,
            root_folder_label = ":t",
          },
          view = {
            width = 30,
            side = "left",
            mappings ={
            list= {
                { key = '<CR>', action = "edit"},
                { key = "t", action = "edit"},
                {key = "T", action = "tabnew"},
                },
            },
          },
          filters = {
            dotfiles = false,
          },
            view = {
            float = {
              enable = false,
              open_win_config = {
                border = "single",  -- Thin border for floating window
              },
            },
          },
        })
        vim.keymap.set('n', '<leader>e', ":NvimTreeToggle<CR>")
        -- Thin and subtle separator color
        vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#000000", bg = "None" })
    end
}
