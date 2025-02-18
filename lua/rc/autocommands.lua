vim.api.nvim_create_augroup('rc', {})
local function autocmd(event, opts)
	opts = vim.tbl_extend('keep', opts, { group = 'rc' })
	vim.api.nvim_create_autocmd(event, opts)
end

autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank { timeout = 200, higroup = 'Visual' }
	end,
})

autocmd('BufReadPost', {
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, [["]])
		if 0 < mark[1] and mark[1] <= vim.api.nvim_buf_line_count(0) then
			vim.api.nvim_win_set_cursor(0, mark)
		end
	end,
	desc = 'open file with cursor on last position',
})

vim.api.nvim_create_user_command('Scratch', function()
	vim.api.nvim_open_win(vim.api.nvim_create_buf(false, true), true, {
		split = 'below',
		height = 20,
	})
	vim.cmd.startinsert()
end, {})
