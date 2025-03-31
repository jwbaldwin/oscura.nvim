--- @class Themes
local themes = {
	--- @param palette OscuraPalette
	--- @param config OscuraConfig
	--- @return OscuraThemeDark
	dark = function(palette, config)
		local main = {
			bg = palette.bg,
			fg = palette.fg,
		}

		if config.custom_dark_background ~= nil and type(config.custom_dark_background) == "string" then
			main.bg = config.custom_dark_background
		end

		if config.transparent_background then
			main.bg = palette.none
		end

		--- @class OscuraThemeDark
		local theme = {
			bg = main.bg,
			fg = main.fg,
			editor = {
				color_column = {
					bg = palette.bg_highlight,
				},
				conceal = {
					fg = palette.comment,
				},
				cursor = {
					bg = main.fg,
					fg = main.bg,
					search = {
						bg = palette.bg_word_highlight,
					},
					column = {
						bg = palette.bg_highlight,
					},
					line = {
						bg = config.cursorline and palette.bg_highlight or main.bg,
						nr = {
							bg = config.cursorline and palette.bg_highlight or main.bg,
							fg = main.fg,
						},
					},
				},
				match_paren = {
					bg = palette.bg_word_highlight,
				},
				directory = {
					fg = palette.blue,
				},
				diff = {
					add = {
						bg = palette.diff_add,
					},
					change = {
						bg = palette.yellow_01,
					},
					delete = {
						bg = palette.diff_delete,
					},
					text = {
						bg = palette.diff_add,
					},
				},
				folded = {
					bg = palette.bg_highlight,
				},
				line_nr = {
					bg = main.bg,
					fg = palette.fg_gutter,
				},
				msg = {
					error = {
						fg = palette.red_error,
					},
					mode = {
						fg = palette.green,
					},
					warning = {
						fg = palette.warning,
					},
				},
				non_text = {
					fg = palette.comment,
				},
				float = {
					bg = config.float_borderless and palette.dark_03 or main.bg,
					border = {
						bg = config.float_borderless and palette.dark_03 or main.bg,
						fg = config.float_borderless and palette.dark_03 or palette.border,
					},
				},
				pmenu = {
					bg = palette.bg_popup,
					fg = palette.fg,
					sel = {
						bg = palette.bg_highlight,
						fg = palette.fg,
					},
					sbar = {
						bg = palette.bg_popup,
					},
					thumb = {
						bg = palette.border,
					},
				},
				search = {
					bg = palette.bg_visual,
				},
				spell = {
					bad = {
						fg = palette.red,
					},
					cap = {
						fg = palette.yellow,
					},
					local_ = {
						fg = palette.green,
					},
					rare = {
						fg = palette.teal,
					},
				},
				status_line = {
					bg = palette.bg,
					fg = palette.fg_dark,
					medium = {
						bg = palette.bg_highlight,
						fg = palette.fg_dark,
						git = {
							added = {
								fg = palette.git_add,
							},
							changed = {
								fg = palette.git_change,
							},
							removed = {
								fg = palette.git_delete,
							},
						},
					},
					mode = {
						bg = palette.green,
						fg = palette.black,
					},
					lsp = {
						active = {
							fg = palette.green,
						},
					},
					icon = {
						git = {
							fg = palette.orange,
						},
						unsaved = {
							fg = palette.yellow,
						},
					},
				},
				title = {
					fg = palette.fg,
				},
				visual = {
					bg = palette.bg_visual,
				},
				win = {
					bar = {
						unsaved_symbol = {
							bg = main.bg,
							fg = palette.yellow,
						},
					},
					separator = {
						bg = main.bg,
						fg = palette.border,
					},
				},
				completion = {
					menu = {
						bg = config.float_borderless and palette.bg_popup or main.bg,
					},
					border = {
						bg = config.float_borderless and palette.bg_popup or main.bg,
						fg = config.float_borderless and palette.bg_popup or palette.border,
					},
					doc = {
						bg = config.float_borderless and palette.bg_popup or main.bg,
						separator = {
							bg = config.float_borderless and palette.bg_popup or main.bg,
							fg = palette.border,
						},
						border = {
							bg = config.float_borderless and palette.bg_popup or main.bg,
							fg = config.float_borderless and palette.bg_popup or palette.border,
						},
					},
				},
			},
			syntax = {
				comment = {
					fg = palette.comment,
				},
				constant = {
					fg = palette.fg,
					italic = {
						builtin = config.italic_constant.builtin,
					},
				},
				string = {
					fg = palette.string,
					italic = config.italic_string,
				},
				character = {
					fg = palette.orange,
				},
				number = {
					fg = palette.number,
				},
				boolean = {
					fg = palette.number,
				},
				identifier = {
					fg = palette.fg,
				},
				function_ = {
					fg = palette.function_name,
					italic = {
						declaration = config.italic_function.declaration,
						call = config.italic_function.call,
						method = {
							declaration = config.italic_function.method.declaration,
							call = config.italic_function.method.call,
						},
					},
				},
				keyword = {
					fg = palette.keyword,
					italic = config.italic_keyword,
				},
				operator = {
					fg = palette.operator,
				},
				type = {
					fg = palette.type,
					italic = {
						normal = config.italic_type.normal,
						builtin = config.italic_type.builtin,
						definition = config.italic_type.definition,
					},
				},
				special = {
					fg = palette.blue,
				},
				delimiter = {
					fg = palette.brackets[1],
				},
				underlined = {
					underline = true,
				},
				error = {
					fg = palette.red_error,
				},
				todo = {
					bg = palette.yellow,
				},
				added = {
					fg = palette.black,
					bg = palette.git_add,
				},
				changed = {
					fg = palette.black,
					bg = palette.git_change,
				},
				removed = {
					fg = palette.black,
					bg = palette.git_delete,
				},
				tag = {
					fg = palette.tag,
				},
				attribute = {
					fg = palette.attribute,
				},
			},
			git = {
				added = {
					fg = palette.git_add,
					inline = {
						bg = palette.diff_add,
					},
				},
				changed = {
					fg = palette.git_change,
					inline = {
						bg = palette.diff_add,
						fg = palette.git_change,
					},
				},
				removed = {
					fg = palette.git_delete,
					inline = {
						bg = palette.diff_delete,
					},
				},
			},
			treesitter = {
				tag = {
					delimiter = {
						fg = palette.comment,
					},
				},
				context = {
					bg = config.treesitter_context_bg and palette.bg_highlight or main.bg,
					line_number = {
						bg = config.treesitter_context_bg and palette.bg_highlight or main.bg,
					},
					bottom = {
						underline = not config.treesitter_context_bg,
						sp = palette.border,
					},
				},
			},
			lsp = {
				reference = {
					text = {
						bg = palette.bg_word_highlight,
					},
					read = {
						bg = palette.bg_word_highlight,
					},
					write = {
						bg = palette.bg_word_highlight,
					},
				},
			},
			diagnostic = {
				error = {
					fg = palette.red_error,
				},
				warn = {
					fg = palette.warning,
				},
				info = {
					fg = palette.info,
				},
				hint = {
					fg = palette.hint,
				},
				ok = {
					fg = palette.green,
				},
				unnecessary = {
					fg = palette.comment,
					special = {
						fg = palette.teal,
					},
				},
			},
			nvim_tree = {
				normal = {
					bg = config.transparent_background and palette.none or palette.bg,
					fg = palette.fg,
				},
				win_separator = {
					bg = main.bg,
					fg = main.bg,
				},
				folder = {
					icon = {
						fg = palette.yellow,
					},
				},
				root_folder = {
					fg = palette.fg,
				},
				git = {
					deleted = {
						fg = palette.git_delete,
					},
					dirty = {
						fg = palette.git_change,
					},
					ignored = {
						fg = palette.comment,
					},
					staged = {
						fg = palette.git_add,
					},
				},
				exec_file = {
					fg = palette.green,
				},
			},
			cmp_item = {
				abbr = {
					fg = palette.fg,
				},
				kind = {
					fg = palette.comment,
				},
			},
			fzf = {
				normal = {
					bg = palette.bg_popup,
				},
				border = {
					bg = palette.bg_popup,
					fg = palette.bg_popup,
				},
				preview = {
					normal = {
						bg = main.bg,
					},
					border = {
						bg = main.bg,
						fg = main.bg,
					},
					title = {
						bg = main.bg,
						fg = main.bg,
					},
				},
			},
			telescope = {
				normal = {
					bg = palette.bg_popup,
				},
				border = {
					bg = palette.bg_popup,
					fg = palette.bg_popup,
				},
				preview = {
					normal = {
						bg = main.bg,
					},
					border = {
						bg = main.bg,
						fg = main.bg,
					},
					title = {
						bg = main.bg,
						fg = main.bg,
					},
				},
				prompt = {
					normal = { bg = palette.bg_popup },
					border = {
						bg = palette.bg_popup,
						fg = palette.bg_popup,
					},
					title = {
						bg = palette.bg_popup,
						fg = palette.bg_popup,
					},
				},
			},
			alpha = {
				header = {
					fg = palette.function_name,
				},
			},
			grapple = {
				normal = {
					bg = palette.bg_popup,
				},
				border = {
					bg = palette.bg_popup,
					fg = palette.bg_popup,
				},
				title = {
					bg = palette.green,
					fg = palette.black,
				},
				footer = {
					bg = palette.bg_highlight,
					fg = palette.fg_dark,
				},
			},
			mini = {
				indentscope = {
					fg = palette.border,
				},
			},
			lazy = {
				button = {
					bg = config.float_borderless and palette.bg_popup or main.bg,
				},
				progress = {
					bg = main.bg,
					done = {
						fg = palette.comment,
					},
					todo = {
						fg = config.float_borderless and palette.bg_popup or main.bg,
					},
				},
			},
			snacks = {
				picker = {
					input = {
						bg = palette.bg_popup,
						border = {
							bg = palette.bg_popup,
						},
					},
					list = {
						bg = palette.bg_highlight,
						border = {
							bg = palette.bg_highlight,
						},
					},
				},
			},
		}

		return theme
	end,
}

return themes
