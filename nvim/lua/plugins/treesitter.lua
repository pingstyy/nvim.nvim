return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
        -- TreeSitter
        local config = require("nvim-treesitter.configs")
        config.setup({
                  ensure_installed = {
                "c", "lua", "vim", "vimdoc", "c_sharp","css", "sql", "cpp", "javascript", "html","cmake", "csv","cuda","bash","dockerfile", "go","graphql", "java","rust", "zig", "json", "julia", "latex", "llvm", "nix", "php", "prisma", "python","tmux","toml", "yaml", "tsx", "typescript","xml",
              },
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
