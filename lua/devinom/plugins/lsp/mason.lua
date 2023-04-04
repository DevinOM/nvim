-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"bashls",
		"clangd",
		"cmake",
		"cssls",
		"dockerls",
		"gradle_ls",
		"graphql",
		"html",
		"jsonls",
		"jdtls",
		"tsserver",
		"kotlin_language_server",
		"ltex",
		"lua_ls",
		"marksman",
		"jedi_language_server",
		"sqlls",
		"terraformls",
		"lemminx",
		"yamlls",
	},
})

mason_null_ls.setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"eslint_d",
		"google_java_format",
		"semgrep",
		"clang-format",
		"cpplint",
		"tflint",
		"luacheck",
		"luaformatter",
		"sql-formatter",
	},
})
