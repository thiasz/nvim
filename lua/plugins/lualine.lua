return {
  {
    "nvim-lualine/lualine.nvim",
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
  },
}
