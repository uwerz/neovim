return {
  { "catppuccin/nvim", 
  	name = "catppuccin", 
  	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = true,
			show_end_of_buffer = false, 
        		term_colors = false,
        		dim_inactive = {
          			enabled = false,
          			shade = "dark",
          			percentage = 0.15,
        		},
        		no_italic = false, 
        		no_bold = false, 
        		styles = {
          			comments = { "italic" },
          			conditionals = { "italic" },
          			loops = {},
          			functions = {},
          			keywords = {},
          			strings = {},
          			variables = {},
          			numbers = {},
          			booleans = {},
          			properties = {},
          			types = {},
          			operators = {},
        		},
			custom_highlights = function(colors)
    				local u = require("catppuccin.utils.colors")
    				return {
      					CursorLine = {
        					bg = u.vary_color(
          						{ latte = u.lighten(colors.mantle, 0.70, colors.base) },
          						u.darken(colors.surface0, 0.64, colors.base)
        					),
      					},
    				}
  			end,
			integrations = {
         			cmp = true,
          			gitsigns = true,
          			neotree = true,
          			telescope = true,
          			notify = true,
          			mini = true,
          			leap = true,
          			native_lsp = {
            				enabled = true,
            				virtual_text = {
              					errors = { "italic" },
              					hints = { "italic" },
              					warnings = { "italic" },
              					information = { "italic" },
            				},
            				underlines = {
              					errors = { "underline" },
              					hints = { "underline" },
              					warnings = { "underline" },
              					information = { "underline" },
            				},
          			},
        		},
		})

	  	vim.cmd([[colorscheme catppuccin]])
	end,
  }
}
