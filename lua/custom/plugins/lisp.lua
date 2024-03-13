return {

   -- For Conjure Clojure Plugin
   --
   --
   {
      "Olical/conjure",
--      ft = { "clojure", "fennel", "python", "common-lisp" }, -- etc
      -- [Optional] cmp-conjure for cmp
      dependencies = {
         {
            "PaterJason/cmp-conjure",
            config = function()
               local cmp = require("cmp")
               local config = cmp.get_config()
               table.insert(config.sources, {
                  name = "buffer",
                  option = {
                     sources = {
                        { name = "conjure" },
                     },
                  },
               })
               cmp.setup(config)
            end,
         },
      },
      config = function(_, opts)
         require("conjure.main").main()
         require("conjure.mapping")["on-filetype"]()
      end,
      init = function()
         -- Set configuration options here
         vim.g["conjure#debug"] = false
         vim.g.maplocalleader = ','
      end,
   },
   -- Structural editing, optional
   'guns/vim-sexp',
   'tpope/vim-sexp-mappings-for-regular-people',
   'tpope/vim-repeat',
   'tpope/vim-surround',
}
