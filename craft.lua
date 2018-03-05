--CRAFTING

-- Blocks

minetest.register_craft({
	output = 'trainblocks:subwayblock',
	recipe = {
		{'', 'dye:blue', ''},
		{'dye:white', 'default:glass', 'dye:white'},
		{'', 'dye:blue', ''},
	}
})

minetest.register_craft({
	output = 'trainblocks:sbahnblock',
	recipe = {
		{'', 'dye:orange', ''},
		{'dye:white', 'default:glass', 'dye:white'},
		{'', 'dye:orange', ''},
	}
})

--lineblocks
local dyes1 = {"blue", "red", "violet", "green", "orange", "yellow", "gray", "magenta", "cyan", "black"}
local dyes2 = {"white", "white", "white", "white", "white", "black", "white", "white", "white", "white"}

for count = 1, 10, 1 do
minetest.register_craft({
	output = "trainblocks:line" .. count ..  " 4",
	recipe = {
		{'', "dye:" .. dyes1[count] , ''},
		{"dye:" .. dyes2[count], 'default:glass', ''},
		{'', '', ''},
	}
})
end


--direction signs

minetest.register_craft({
	output = 'trainblocks:subwaysignL 2',
	recipe = {
		{'', '', ''},
		{'dye:white', 'default:glass', 'dye:blue'},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'trainblocks:subwaysignR 2',
	recipe = {
		{'', '', ''},
		{'dye:blue', 'default:glass', 'dye:white'},
		{'', '', ''},
	}
})