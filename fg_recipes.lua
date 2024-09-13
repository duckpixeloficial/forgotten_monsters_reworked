

-- TOLOLS : ======================================================================================

minetest.register_craft({
  output = "forgotten_monsters:pick_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"},
    {"","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""}
  }
})


minetest.register_craft({
  output = "forgotten_monsters:shovel_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""}
  }
})



minetest.register_craft({
  output = "forgotten_monsters:axe_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone",""},
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""}
  }
})

minetest.register_craft({
  output = "forgotten_monsters:sword_bones",
  recipe = {
    {"","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""}
  }
})


--- CURA : ==================================================================================
minetest.register_craft({
  output = "forgotten_monsters:old_bottle 7",
  recipe = {
    {"", "group:glass", ""},
    {"group:glass","group:glass","group:glass"},
    {"group:glass","group:glass","group:glass"}
  }
})




minetest.register_craft({
  output = "forgotten_monsters:healing 3",
  recipe = {
    {"", "", ""},
    {"", "forgotten_monsters:hungry_sheet", ""},
    {"", "forgotten_monsters:old_bottle", ""}
  }
})


-- NODES : ======================================================================================

minetest.register_craft({
	output = "forgotten_monsters:buried_bone_block",
	recipe = {
		{"forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone"},
		{"forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone"},
		{"forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone"},
	}
})




-- CARNE DE GROWLER =============================================================================

minetest.register_craftitem("forgotten_monsters:growler_meat_raw", {
    description = "Growler Meat Raw",
    inventory_image = "growler_meat_raw.png",
    on_use = minetest.item_eat(-5),
})

minetest.register_craftitem("forgotten_monsters:growler_meat", {
    description = "Growler Meat",
    inventory_image = "growler_meat.png",
    on_use = minetest.item_eat(5),
})


minetest.register_craft({
	output = "forgotten_monsters:growler_meat",
	type = "cooking",
	recipe = "forgotten_monsters:growler_meat_raw",
	cooktime = 4
})


-- FOLHA  HUNGRY : ==============================================================================

minetest.register_craftitem("forgotten_monsters:hungry_sheet", {
    description = "Hungry Sheet",
    inventory_image = "folha.png",


})



-- SPECTRUM COISAS : =================================================================================

minetest.register_craft({
	output = "forgotten_monsters:translocation_rod",
	recipe = {
		{"", "spectrum:spectrum_orb", ""}, 
		{"", "spectrum:spectrum_orb", ""}, 
		{"", "spectrum:spectrum_orb", ""},
	}
})


minetest.register_craft({
	output = "forgotten_monsters:spectrum_orb_block",
	recipe = {
		{"forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb"},
		{"forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb"},
		{"forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb"},
	}
})




-- SUMMONS NODES : ====================================================================================

minetest.register_craft({
	output = "forgotten_monsters:summon_golem",
	recipe = {
		{"group:stone", "group:stone", "group:stone"},
		{"group:stone", "forgotten_monsters:spectrum_orb_block", "group:stone"},
		{"group:stone", "group:stone", "group:stone"},
	}
})


minetest.register_craft({
	output = "forgotten_monsters:summon_mese_lord",
	recipe = {
		{"group:stone", "forgotten_monsters:spectrum_orb_block", "group:stone"},
		{"forgotten_monsters:spectrum_orb_block", "forgotten_monsters:heart_of_mese", "forgotten_monsters:spectrum_orb_block"},
		{"group:stone", "forgotten_monsters:spectrum_orb_block", "group:stone"},
	}
})



minetest.register_craft({
	output = "forgotten_monsters:summon_sking",
	recipe = {
		{"group:stone", "forgotten_monsters:buried_bone_block", "group:stone"},
		{"forgotten_monsters:buried_bone_block", "forgotten_monsters:eye_of_the_lord", "forgotten_monsters:buried_bone_block"},
		{"group:stone", "forgotten_monsters:buried_bone_block", "group:stone"},
	}
})






























