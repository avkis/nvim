local ft = vim.api.nvim_create_augroup("filetype_gohtml", { clear = true })
vim.api.nvim_create_autocmd("filetype", {
	group = ft,
	pattern = ".gohtml",
	callback = function()
		vim.bo.filetype = "html"
	end,
})

vim.filetype.add({
	extension = {
		tmpl = "tmpl",
		gotmpl = "gotmpl",
		gohtml = "gohtml",
	},
	pattern = {
		[".*/templates/.*%.tm?pl"] = "helm",
		[".*/templates/.*%.ya?ml"] = "helm",
		["helmfile.*%.ya?ml"] = "helm",
	},
})
