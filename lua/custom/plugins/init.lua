-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- tabs
-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts})
vim.keymap.set("n", "<tab>]", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<tab>[", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader>fm", ":lua MiniFiles.open()<CR>", { silent = true, desc = "Open MiniFiles" })
vim.keymap.set(
  "n", "<tab>x", ":lua require('mini.bufremove').delete(vim.fn.bufnr('%'), false)<CR>",
  { silent = true, desc = "Close Current Buffer" }
)


return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts         = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event   = "VeryLazy",
    config  = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  -- helps align and justify text
  --  some default mappings to try:
  --   start = 'ga',
  --   start_with_preview = 'gA',
  --
  {
    'echasnovski/mini.align',
    version = '*',
    config  = function()
      require('mini.align').setup()
    end,
  },
  {
    'echasnovski/mini.files',
    version = false,
    config  = function()
      require("mini.files").setup({
        -- Configuration here, or leave empty to use defaults
        -- Navigate and manipulate file system:
        -- Press j/k to navigate down/up.
        -- Press l to expand entry under cursor: show directory or open file in the most recent window.
        -- Press h to go to parent directory.
        -- Type g? for more information about other available mappings.
        -- Move as in any other buffer ($, G, f/t, etc.).
        -- Press =; read confirmation dialog; confirm with y/<CR> or not confirm with n/<Esc>.
      })
    end
  },
  {
    --Buffer removing (unshow, delete, wipeout), which saves window layout
    'echasnovski/mini.bufremove',
    version = '*',
    config  = function()
      require("mini.bufremove").setup({
      })
    end

  },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},  -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = {      -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      }
    end,
  },
}
