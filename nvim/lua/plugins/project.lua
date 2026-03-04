return {
  {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    config = function()
      require("project_nvim").setup({
        manual_mode = true,
      })
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><leader>",
        function()
          local hidden = vim.v.count == 1
          require("telescope.builtin").find_files({ cwd = vim.fn.getcwd(), hidden = hidden })
        end,
        desc = "Find Files (cwd) — prefix 1 to include hidden",
      },
      {
        "<leader>fP",
        function()
          local root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
          require("telescope.builtin").find_files({ cwd = root })
        end,
        desc = "Find Files (project root)",
      },
    },
  },
}
