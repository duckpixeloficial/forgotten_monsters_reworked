-- TOLOLS : ======================================================================================
if core.get_modpath("default") then
core.override_item("default:glass", {
groups = {cracky = 3, oddly_breakable_by_hand = 3,glass = 1},
})
end

core.register_craft({
  output = "forgotten_monsters:pick_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"},
    {"","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""}
  }
})

core.register_craft({
  output = "forgotten_monsters:shovel_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""}
  }
})

core.register_craft({
  output = "forgotten_monsters:axe_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone",""},
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""}
  }
})

core.register_craft({
  output = "forgotten_monsters:sword_bones",
  recipe = {
    {"","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""},
    {"","forgotten_monsters:buried_bone",""}
  }
})

--- CURA : ==================================================================================
core.register_craft({
  output = "forgotten_monsters:old_bottle 7",
  recipe = {
    {"", "group:glass", ""},
    {"group:glass","group:glass","group:glass"},
    {"group:glass","group:glass","group:glass"}
  }
})

core.register_craft({
  output = "forgotten_monsters:healing 3",
  recipe = {
    {"", "", ""},
    {"", "forgotten_monsters:hungry_sheet", ""},
    {"forgotten_monsters:old_bottle", "forgotten_monsters:old_bottle", "forgotten_monsters:old_bottle"}
  }
})
-- NODES : ======================================================================================
core.register_craft({
	output = "forgotten_monsters:buried_bone_block",
	recipe = {
		{"forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone"},
		{"forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone"},
		{"forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone"},
	}
})
-- SPECTRUM COISAS : =================================================================================
core.register_craft({
	output = "forgotten_monsters:translocation_rod",
	recipe = {
		{"", "forgotten_monsters:spectrum_orb", ""}, 
		{"", "group:stick", ""}, 
		{"", "group:stick", ""},
	}
})

core.register_craft({
	output = "forgotten_monsters:spectrum_orb_block",
	recipe = {
		{"forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb"},
		{"forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb"},
		{"forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb", "forgotten_monsters:spectrum_orb"},
	}
})

-- ITENS : ======================================================================================
core.register_craft({
	output = "forgotten_monsters:fgbook",
	recipe = {
		{"", "group:leaves", ""}, 
		{"", "group:leaves", ""}, 
		{"", "group:leaves", ""},
	}
})

-- SUMMONS NODES : ====================================================================================
local recipe_golem = "group:stone"

if core.get_modpath("mcl_deepslate") then 
   recipe_golem = "mcl_deepslate:deepslate"
   elseif core.get_modpath("default") then
   recipe_golem = "default:stone"
end

core.register_craft({
	output = "forgotten_monsters:meselord",
	recipe = {
		{"forgotten_monsters:fgbook", "forgotten_monsters:fgbook", "forgotten_monsters:fgbook"},
		{"forgotten_monsters:fgbook", "forgotten_monsters:spectrum_orb_block", "forgotten_monsters:fgbook"},
		{"forgotten_monsters:fgbook", "forgotten_monsters:fgbook", "forgotten_monsters:fgbook"},
	}
})

core.register_craft({
	output = "forgotten_monsters:golem",
	recipe = {
		{"forgotten_monsters:fgbook", recipe_golem, "forgotten_monsters:fgbook"},
		{"forgotten_monsters:fgbook", "forgotten_monsters:heart_of_mese", "forgotten_monsters:fgbook"},
		{"forgotten_monsters:fgbook", recipe_golem, "forgotten_monsters:fgbook"},
	}
})

core.register_craft({
	output = "forgotten_monsters:sking",
	recipe = {
		{"forgotten_monsters:fgbook", "forgotten_monsters:buried_bone_block", "forgotten_monsters:fgbook"},
		{"forgotten_monsters:buried_bone_block", "forgotten_monsters:eye_of_the_golem", "forgotten_monsters:buried_bone_block"},
		{"forgotten_monsters:fgbook", "forgotten_monsters:buried_bone_block", "forgotten_monsters:fgbook"},
	}
})

