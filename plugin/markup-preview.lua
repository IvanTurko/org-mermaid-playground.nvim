if vim.g.loaded_markup_preview then
	return
end
vim.g.loaded_markup_preview = true

-- User commands
vim.api.nvim_create_user_command("MarkupPreview", function()
	require("markup_preview").start()
end, {})

vim.api.nvim_create_user_command("MarkupPreviewRefresh", function()
	require("markup_preview").refresh()
end, {})

vim.api.nvim_create_user_command("MarkupPreviewStop", function()
	require("markup_preview").stop()
end, {})

