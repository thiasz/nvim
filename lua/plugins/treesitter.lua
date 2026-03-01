vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

require("nvim-treesitter").setup({
    install_dir = vim.fn.stdpath("data") .. "/site",
    sync_install = false,
    highlight = {
        enable = true,
        disable = "help",
    },
    indent = {
        enable = true,
    },
    autopairs = {
        enable = true,
    },
    modules = {},
    ignore_install = {},
})

require("nvim-treesitter").install({
    "bash",
    "diff",
    "jinja",
    "jinja_inline",
    "jsdoc",
    "json",
    "json5",
    "lua",
    "luadoc",
    "luap",
    "markdown",
    "markdown_inline",
    "python",
    "query",
    "regex",
    "robot",
    "toml",
    "vim",
    "vimdoc",
    "xml",
    "yaml",
    "yang",
})
