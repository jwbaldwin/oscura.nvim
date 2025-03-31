--- @class OscuraPalette
local palette = {
	-- Base colors from Oscura theme
	bg = "#0B0B0F", -- Main editor background
	fg = "#E6E6E6", -- Default text color
	fg_dark = "#C1C1C1", -- Sidebar text color
	fg_gutter = "#32333B", -- Line number color
	black = "#000000", -- Deep black for contrast

	-- UI element colors
	bg_highlight = "#232323", -- Selected item background
	bg_popup = "#2C2C31", -- Input box background
	border = "#282828", -- Border color
	border_highlight = "#E6E7A3", -- Focus border color
	bg_visual = "#303033", -- Selected text background (adjusted from #EAEC8A16)
	bg_search = "#2A2A2E", -- Search highlight background (adjusted from #FFFFFF08)
	bg_word_highlight = "#333339", -- Reference highlight background (adjusted from #EAEC8A21)

	-- Syntax highlighting colors
	comment = "#46474F", -- Comments
	keyword = "#9099A1", -- Keywords, control flow
	operator = "#9099A1", -- Operators
	function_name = "#E6E7A3", -- Functions
	tag = "#E6E7A3", -- HTML/XML tags
	number = "#F9B98C", -- Numbers and constants
	string = "#E6E6E6", -- Strings
	type = "#E6E7A3", -- Types, classes
	attribute = "#54C0A3", -- HTML attributes

	-- Accent colors
	blue = "#479FFA", -- Links
	red = "#D84F68", -- Errors
	red_error = "#FF5C5C", -- Error squiggles
	green = "#4EBE96", -- Debug status bar
	yellow = "#E6E7A3", -- Function names
	yellow_light = "#D6D876", -- Buttons, badges
	orange = "#F9B98C", -- Numbers
	purple = "#9592A4", -- Language methods
	teal = "#54C0A3", -- Attributes

	-- Git colors
	git_add = "#E6E6E6", -- Added lines
	git_delete = "#D84F68", -- Deleted lines
	git_change = "#E6E7A3", -- Modified lines

	-- Diff colors
	diff_add = "#2D2D35", -- Added text background (adjusted from #E6E6E615)
	diff_delete = "#352A31", -- Removed text background (adjusted from #D84F6815)

	-- Special
	warning = "#FFA16C", -- Warnings
	hint = "#C1C1C1", -- Hints
	info = "#E6E7A3", -- Info messages

	-- Bracket colors
	brackets = {
		"#5C6974", -- Bracket pair color 1
		"#6E678E", -- Bracket pair color 2
		"#6A7782", -- Bracket pair color 3
		"#6A7782", -- Bracket pair color 4
		"#6A7782", -- Bracket pair color 5
		"#6A7782", -- Bracket pair color 6
	},

	-- Maintain compatibility with existing code
	dark_01 = "#0B0B0F",
	dark_02 = "#111111",
	dark_03 = "#161616",
	dark_04 = "#202020",
	dark_05 = "#212121",
	dark_06 = "#282828",

	grey_01 = "#383838",
	grey_02 = "#46474F", -- Comments
	grey_03 = "#5c5c5c",
	grey_04 = "#787878",
	grey_05 = "#888888",
	grey_06 = "#9c9c9c",
	grey_07 = "#9099A1", -- Keywords
	grey_08 = "#b8b8b8",

	light_01 = "#E6E6E6", -- Regular text
	light_02 = "#d8d8d8",
	light_03 = "#f9f9f9",
	light_04 = "#fefefe",

	red_01 = "#4C1919",
	red_02 = "#701414",
	red_03 = "#D84F68", -- Error text
	red_04 = "#FF5C5C", -- Error squiggles
	red_05 = "#FFCCCC",

	yellow_01 = "#7e4e08",
	yellow_02 = "#b08508",
	yellow_03 = "#E6E7A3", -- Function names, tags

	orange_01 = "#cc6d00",
	orange_02 = "#F9B98C", -- Numbers

	green_01 = "#383E2A",
	green_02 = "#4C5B2B",
	green_03 = "#548b40",
	green_04 = "#4EBE96", -- Debug status bar
	green_05 = "#54C0A3", -- Attributes

	blue_01 = "#1b1f1f",
	blue_02 = "#346969",
	blue_03 = "#479FFA", -- Links
	blue_04 = "#799496",
	blue_05 = "#86c1b9",

	purple_01 = "#5E698E",
	purple_02 = "#9592A4", -- Language methods
	purple_03 = "#9592A4",

	pink_01 = "#C493B0",

	brown_01 = "#452b04",

	none = "NONE",
}

return palette
