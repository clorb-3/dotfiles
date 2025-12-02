local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("vim-options")
require("lazy").setup("plugins")

vim.o.updatetime = 250
vim.api.nvim_create_autocmd({ "CursorHold" }, {
	pattern = "*",
	callback = function()
		for _, winid in pairs(vim.api.nvim_tabpage_list_wins(0)) do
			if vim.api.nvim_win_get_config(winid).zindex then
				return
			end
		end
		vim.diagnostic.open_float({
			scope = "cursor",
			focusable = false,
			close_events = {
				"CursorMoved",
				"CursorMovedI",
				"BufHidden",
				"InsertCharPre",
				"WinLeave",
			},
			border = "none",
		})
	end,
})
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.yuck" },
	callback = function(event)
		print(string.format("starting yuck;s for %s", vim.inspect(event)))
		vim.lsp.start({
			name = "YuckLs",
			cmd = { "dotnet", "/home/claude/yuckls/YuckLS/dist/YuckLS.dll" }, --this must be where you cloned this repo to.
			--cmd = {"yuckls"} -- if installed from aur
			root_dir = vim.fn.getcwd(),
		})
	end,
})
