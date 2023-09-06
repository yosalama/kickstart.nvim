--         ╒══════════════════════════════════════════════════════════╕
--                Allows you to easily draw nice boxed comments
--         ╘══════════════════════════════════════════════════════════╛

vim.keymap.set("n", "<leader>cbc", ":CBcatalog<CR>", { desc = "CommentBox Catalog" })
vim.keymap.set("x", "<leader>cbc", ":lua require 'comment-box'.catalog()<CR>", { desc = "CommentBox Catalog" })

vim.keymap.set("x", "<leader>cb1/", ":CBccbox<CR>", { desc = "CommentBox n°1 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb2/", ":CBccbox2<CR>", { desc = "CommentBox n°2 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb3/", ":CBccbox3<CR>", { desc = "CommentBox n°3 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb4/", ":CBccbox4<CR>", { desc = "CommentBox n°4 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb5/", ":CBccbox5<CR>", { desc = "CommentBox n°5 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb6/", ":CBccbox6<CR>", { desc = "CommentBox n°6 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb7/", ":CBccbox7<CR>", { desc = "CommentBox n°7 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb8/", ":CBccbox8<CR>", { desc = "CommentBox n°8 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb8/", ":CBccbox9<CR>", { desc = "CommentBox n°9 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb10/", ":CBccbox10<CR>", { desc = "CommentBox n°10 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb11/", ":CBccbox11<CR>", { desc = "CommentBox n°11 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb12/", ":CBccbox12<CR>", { desc = "CommentBox n°12 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb13/", ":CBccbox13<CR>", { desc = "CommentBox n°13 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb14/", ":CBccbox14<CR>", { desc = "CommentBox n°14 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb15/", ":CBccbox15<CR>", { desc = "CommentBox n°15 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb16/", ":CBccbox16<CR>", { desc = "CommentBox n°16 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb17/", ":CBccbox17<CR>", { desc = "CommentBox n°17 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb18/", ":CBccbox18<CR>", { desc = "CommentBox n°18 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb19/", ":CBccbox19<CR>", { desc = "CommentBox n°19 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb20/", ":CBccbox20<CR>", { desc = "CommentBox n°20 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb21/", ":CBccbox21<CR>", { desc = "CommentBox n°21 w/ Text Centered" })
vim.keymap.set("x", "<leader>cb22/", ":CBccbox22<CR>", { desc = "CommentBox n°22 w/ Text Centered" })

return {
  {
    'LudoPinelli/comment-box.nvim',
    version = '*',
    config  = function()
    end

  },
}
