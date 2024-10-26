

-- TOLOLS : ======================================================================================

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
    {"", "forgotten_monsters:old_bottle", ""}
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
		{"", "forgotten_monsters:spectrum_orb", ""}, 
		{"", "forgotten_monsters:spectrum_orb", ""},
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
	output = "forgotten_monsters:crumpled_paper",
	recipe = {
		{"", "group:leaves", ""}, 
		{"", "group:leaves", ""}, 
		{"", "group:leaves", ""},
	}
})



core.register_craft({
	output = "forgotten_monsters:fgbook",
	recipe = {
		{"forgotten_monsters:crumpled_paper", "forgotten_monsters:crumpled_paper", "forgotten_monsters:crumpled_paper"},
		{"forgotten_monsters:crumpled_paper", "forgotten_monsters:crumpled_paper", "forgotten_monsters:crumpled_paper"},
		{"forgotten_monsters:crumpled_paper", "forgotten_monsters:crumpled_paper", "forgotten_monsters:crumpled_paper"},
	}
})



-- SUMMONS NODES : ====================================================================================


core.register_craft({
	output = "forgotten_monsters:summon_mese_lord",
	recipe = {
		{"forgotten_monsters:fgbook", "forgotten_monsters:fgbook", "forgotten_monsters:fgbook"},
		{"forgotten_monsters:fgbook", "forgotten_monsters:spectrum_orb_block", "forgotten_monsters:fgbook"},
		{"forgotten_monsters:fgbook", "forgotten_monsters:fgbook", "forgotten_monsters:fgbook"},
	}
})


core.register_craft({
	output = "forgotten_monsters:summon_golem",
	recipe = {
		{"forgotten_monsters:fgbook", "forgotten_monsters:spectrum_orb_block", "forgotten_monsters:fgbook"},
		{"forgotten_monsters:fgbook", "forgotten_monsters:heart_of_mese", "forgotten_monsters:fgbook"},
		{"forgotten_monsters:fgbook", "forgotten_monsters:spectrum_orb_block", "forgotten_monsters:fgbook"},
	}
})




core.register_craft({
	output = "forgotten_monsters:summon_sking",
	recipe = {
		{"forgotten_monsters:fgbook", "forgotten_monsters:buried_bone_block", "forgotten_monsters:fgbook"},
		{"forgotten_monsters:buried_bone_block", "forgotten_monsters:letter_queen", "forgotten_monsters:buried_bone_block"},
		{"forgotten_monsters:fgbook", "forgotten_monsters:buried_bone_block", "forgotten_monsters:fgbook"},
	}
})






























