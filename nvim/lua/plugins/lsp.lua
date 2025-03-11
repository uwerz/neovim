return {
  {
  	"https://github.com/neovim/nvim-lspconfig",
  	config = function()
	  require("lspconfig").pyright.setup {}
	  require("lspconfig").gopls.setup {}
  	end,
  }
}
