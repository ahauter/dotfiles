require("austinSettings")
vim.opt.exrc = true
vim.g.vimwiki_global_ext = 0
cur_dir = vim.loop.cwd()
wiki_path = cur_dir .. "/docs/"
vim.g.vimwiki_list = {
  { ["path"] = "~/vimwiki" }
}
vim.cmd("let rWiki = {}")
vim.cmd(string.format("let rWiki.path = '%s'", wiki_path))
vim.cmd("let rWiki.syntax = 'markdown'")
vim.cmd("let rWiki.ext = 'md'")
vim.cmd("let g:vimwiki_list = g:vimwiki_list + [rWiki]")
