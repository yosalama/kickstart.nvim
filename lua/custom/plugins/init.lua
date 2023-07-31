-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  -- helps align and justify text
  --  some default mappings to try:
  --   start = 'ga',
  --   start_with_preview = 'gA',
  --
  {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
      require('mini.align').setup()
    end,
  },
}

