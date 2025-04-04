return {
  {
    "nvim-orgmode/orgmode",
    ft = { "org" },
    config = function()
      -- Setup orgmode
      require("orgmode").setup({
        org_agenda_files = "~/org-files",
        org_default_notes_file = "~/org-files/refile.org",
      })

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      require("nvim-treesitter.configs").setup({
        ensure_installed = "all",
        ignore_install = { "org" },
      })
    end,
  },
  {
    "chipsenkbeil/org-roam.nvim",
    dependencies = {
      {
        "nvim-orgmode/orgmode",
      },
    },
    config = function()
      require("org-roam").setup({
        directory = "~/org-files",
      })
    end,
  },
}
