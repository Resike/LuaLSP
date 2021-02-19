# LuaLSP
Lua Language Server Protocol with World of Warcraft API support.

Sublime Text requires:
https://packagecontrol.io/packages/LSP

Suggested LSP settings:
`"c:\Users\<UserName>\AppData\Roaming\Sublime Text 3\Packages\User\LSP.sublime-settings" `

Replace UserName or the path with your folder.
```json
{
	"auto_show_diagnostics_panel": "never",
	"auto_show_diagnostics_panel_level": 0,
	"clients":
	{
		"wow lua-ls":
		{
			"command":
			[
				"c:/Users/<UserName>/AppData/Roaming/Sublime Text 3/Packages/LuaLSP/server/bin/Windows/lua-language-server",
				"-E",
				"c:/Users/<UserName>/AppData/Roaming/Sublime Text 3/Packages/LuaLSP/server/main.lua"
			],
			"enabled": true,
			"selector": "source.lua",
			"settings": {
				"Lua": {
					"completion": {
						"enable": false,
					},
					"diagnostics": {
						"enable": false,
					},
					"runtime": {
						"version": "WoW Lua 5.1",
					},
					"workspace": {
						"ignoreDir": [
							".git",
							".vscode",
						],
						"maxPreload": 2000,
						"preloadFileSize": 1000,
					},
				},
			},
		},
	},
	"diagnostics_gutter_marker": "",
	"diagnostics_highlight_style": "",
	"disabled_capabilities":
	[
		"completion",
		"diagnostics",
	],
	"document_highlight_style": "",
	"show_diagnostics_count_in_view_status": false,
	"show_diagnostics_in_view_status": false,
	"show_symbol_action_links": false,
	"show_diagnostics_severity_level": 0,
	"log_debug": false,
	"log_server":
	[
		"panel",
	],
}
```
