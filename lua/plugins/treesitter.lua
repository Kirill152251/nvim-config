return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local ts_config = require("nvim-treesitter.configs")
        ts_config.setup({
            ensure_installed = { "lua", "vim", "javascript", "html", "css", "python", "markdown", "markdown_inline", "kotlin", "java", "pascal", "dockerfile", "json", "go" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
