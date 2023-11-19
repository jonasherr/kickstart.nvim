return {
  "nvim-lua/plenary.nvim",
  {
    "ThePrimeagen/harpoon",
    keys = {
      { "<C-a>", function() require("harpoon.mark").add_file() end,        desc = "Add File" },
      { "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, desc = "File Menu" },
      { "<C-j>", function() require("harpoon.ui").nav_file(1) end,         desc = "File 1" },
      { "<C-k>", function() require("harpoon.ui").nav_file(2) end,         desc = "File 2" },
      { "<C-l>", function() require("harpoon.ui").nav_file(3) end,         desc = "File 3" },
      { "<C-;>", function() require("harpoon.ui").nav_file(4) end,         desc = "File 4" },
    }
  },
}
