return {
  {
    "nvim-orgmode/orgmode",
    ft = { "org" },
    lazy = false,
    config = function()
      -- Setup orgmode
      require("orgmode").setup({
        org_agenda_files = {
          "~/orgfiles/zettelkasten/permanent_notes/*.org",
          "~/orgfiles/todos.org", -- Include the todos file in the agenda
        },
        org_default_notes_file = "~/org/zettelkasten/fleeting_notes.org",
        treesitter = true,
        org_capture_templates = {
          f = { -- Fleeting Note
            description = "Fleeting Note",
            template = "* %?\n  %t",
            target = "~/org/zettelkasten/fleeting_notes.org",
            headline = "Fleeting Notes",
          },
          l = { -- Literature Note (Separate File)
            description = "Literature Note",
            template = "* %^{Title}\n  - Source: %cite\n  - Tags: %^t\n  %T",
            target = "~/org/zettelkasten/literature_notes/%s.org",
            filehead = "#+TITLE: %^{Title}\n#+SOURCE: %cite\n#+TAGS: %^t\n",
          },
          p = { -- Permanent Note (Separate File - Each note as a new file)
            description = "Permanent Note",
            template = "* %^{Title}\n  :ID: %u%Y%m%d%H%M%S:\n  %?\n  [[file:../permanent_notes/%Y%m%d%H%M%S_%s.org::*]]\n  %T",
            target = "~/org/zettelkasten/permanent_notes/%Y%m%d%H%M%S_%s.org",
            filehead = "#+TITLE: %^{Title}\n#+ID: %u%Y%m%d%H%M%S:\n",
          },
          t = { -- Todo Item
            description = "Todo",
            template = "* TODO %?\n  %T",
            target = "~/org/zettelkasten/todos.org",
            headline = "Tasks",
          },
        },
      })
    end,
  },
}
