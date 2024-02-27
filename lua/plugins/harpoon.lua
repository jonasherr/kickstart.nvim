return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    keys = {
      { "<C-a>", function() require("harpoon"):list():append() end,                                 desc = "Add File" },
      { "<C-e>", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "File Menu" },
      { "<C-j>", function() require("harpoon"):list():select(1) end,                                desc = "File 1" },
      { "<C-k>", function() require("harpoon"):list():select(2) end,                                desc = "File 2" },
      { "<C-l>", function() require("harpoon"):list():select(3) end,                                desc = "File 3" },
      { "<C-;>", function() require("harpoon"):list():select(4) end,                                desc = "File 4" },
      {
        "<C-b>",
        function()
          local harpoon = require("harpoon")
          harpoon.setup({})

          local function toggle_telescope_with_harpoon(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
              table.insert(file_paths, item.value)
            end

            require("telescope.pickers")
                .new({}, {
                  prompt_title = "Harpoon",
                  finder = require("telescope.finders").new_table({
                    results = file_paths,
                  }),
                  previewer = require("telescope.config").values.file_previewer({}),
                  sorter = require("telescope.config").values.generic_sorter({}),
                })
                :find()
          end

          toggle_telescope_with_harpoon(harpoon:list())
        end,
        desc = "Harpoon Window"
      },
    }
  }
}
