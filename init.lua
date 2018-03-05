
--[[

	Trainblocks
	=============
	This mod adds signs for the advanced trains mod by orwell
	
	version 0.1 by maxx

	Copyright (C) 2018 Maximilian Hipp

	See LICENSE.txt for more information

	History:
	2018-03-04  version 0.1  release
	
]]--

--import file /craft.lua

dofile(minetest.get_modpath("trainblocks") .. "/craft.lua")



--subwayblock germany

minetest.register_node("trainblocks:subwayblock", {
    description = "Subwayblock",
	light_source = 7,
    tiles = {
        "down_subwayblock.png",
        "down_subwayblock.png",
        "front_subwayblock.png",
        "front_subwayblock.png",
        "front_subwayblock.png",
        "front_subwayblock.png"
    },
    is_ground_content = true,
    groups = {cracky = 3},
    drop = "trainblocks:subwayblock"
})

--sbahn block

minetest.register_node("trainblocks:sbahnblock", {
    description = "Sbahnblock",
    light_source = 7,
	tiles = {
        "down_sbahnblock.png",
        "down_sbahnblock.png",
        "front_sbahnblock.png",
        "front_sbahnblock.png",
        "front_sbahnblock.png",
        "front_sbahnblock.png"
    },
    is_ground_content = true,
    groups = {cracky = 3},
    drop = "trainblocks:sbahnblock"
})

--subway signs Line 1 to 10

for count = 1, 10, 1 do  
minetest.register_node("trainblocks:line" .. count, {    
    description = "Line " .. count,
	drawtype = "nodebox",

    tiles = {"front_line" .. count .. ".png"},
	inventory_image = "inventory_line" .. count .. ".png",
	light_source = 5,
    groups = {cracky = 3},
	
	paramtype2 = "facedir",
	paramtype = 'light',
	
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -4/16, -4/16, 6/16,  4/16,  4/16, 8/16},
		},
	},
   
})
end

--subway signs R and L

minetest.register_node("trainblocks:subwaysignL", {
	description = "Subway Sign Left",
	tiles = {
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign2.png",
		"subway_sign2.png^[transformFX",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
		
	
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 3,
	is_ground_content = false,
	groups = {cracky = 3},
})

minetest.register_node("trainblocks:subwaysignR", {
	description = "Subway Sign Right",
	tiles = {
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign3.png",
		"subway_sign2.png",
		"subway_sign2.png",
	},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{ -8/16, -5/16, 6/16,  8/16,  5/16, 8/16},
		},
	},
		
	
	paramtype2 = "facedir",
	paramtype = 'light',
	light_source = 3,
	is_ground_content = false,
	groups = {cracky = 3},
})
