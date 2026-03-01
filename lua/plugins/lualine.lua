vim.pack.add({
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

require("lualine").setup({
    opts = {
        options = {
            disabled_filetypes = {
                statusline = {
                    "",
                },
            },
            -- icons_enable = true,
        },
        sections = {
            lualine_a = { "mode" },
            lualine_c = { {
                "filename",
                path = 1,
            } },
            lualine_b = { "branch", "diff" },
            lualine_x = { "encoding", "filetype" },
            lualine_y = {
                {
                    "diagnostics",
                    sources = { "nvim_workspace_diagnostic" },
                },
            },
            lualine_z = {},
        },
    },
})
require("nvim-web-devicons").setup()
