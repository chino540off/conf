local awful     = require("awful")
local beautiful = require("beautiful")
require("debian.menu")

-- {{{ Menu
-- Create a laucher widget and a main menu
myawesomemenu = {
	{ "manual",			terminal .. " -e man awesome" },
	{ "edit config",		editor_cmd .. " " .. awful.util.getdir("config") .. "/rc.lua" },
	{ "restart",			awesome.restart },
	{ "quit",			awesome.quit }
}

mymainmenu = awful.menu({
	items = {
		{ "awesome",		myawesomemenu, beautiful.awesome_icon },
		{ "Debian",		debian.menu.Debian_menu.Debian },
		{ "open terminal",	terminal }
        }
})

mylauncher = awful.widget.launcher({
	image = image(beautiful.awesome_icon),
	menu = mymainmenu
})
-- }}}
