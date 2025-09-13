local hud_boss = {}
local hud_boss_overlay = {}

function fg_hud_boss(self,dtime,boss_name,boss_life,boss_name_hud,texture_bar,size_x,size_y)
    local players = core.get_connected_players()
    local pos_boss = self.object:get_pos()

    for _, player in ipairs(players) do
        local pos_player = player:get_pos()
        local dist = vector.distance(pos_player, pos_boss)
        local pname = player:get_player_name()
        

        if dist <= 10 then
            if not hud_boss[pname] then
                hud_boss[pname] = player:hud_add({
                    hud_elem_type = "statbar",
                    position = {x=0.2, y=0},
                    direction = 0,
                    offset = {x=50, y=50},
                    size = {x= size_x, y=size_y},
                    text = texture_bar,
                    number = boss_life,
                    text2 = "boss_bar_bg.png",
                    name = "boss_health",
                    max = 20,
                })
            else
                player:hud_change(hud_boss[pname], "number", boss_life)
            end
            
            if not hud_boss_overlay[pname] then
             hud_boss_overlay[pname] = player:hud_add({
		hud_elem_type = "text",
		position = {x=0.45, y=0.06},
		offset = {x=50, y=50},
		scale = {x=2, y=2},
		text = boss_name_hud,
		style = 1,
                size = {x = 2.0},
                number = 0xffffff
	    })
            end
        else
            if hud_boss[pname] then
                player:hud_remove(hud_boss[pname])
                hud_boss[pname] = nil
            end
            
            if hud_boss_overlay[pname] then
            player:hud_remove(hud_boss_overlay[pname])
            hud_boss_overlay[pname] = nil
            end
            
        end
    end
end

function remover_fg_hud_boss()
  local players = core.get_connected_players()
  for _, player in ipairs(players) do
    local pname = player:get_player_name()
    if hud_boss[pname] then
      player:hud_remove(hud_boss[pname])
      hud_boss[pname] = nil
    end
    
    if hud_boss_overlay[pname] then
       player:hud_remove(hud_boss_overlay[pname])
       hud_boss_overlay[pname] = nil
    end
            
  end
end


minetest.register_privilege("fm", {
	description = "Privilege for forgotten monsters",
	give_to_singleplayer = false,
})

core.register_chatcommand("rhb", {
    description = "Remove Hud boss,if it is removed!",
    privs = {fm = true},
    func = function(name, param)
        local player = minetest.get_player_by_name(name)
        if player then
            remover_fg_hud_boss()
            core.chat_send_player(name, "Hud removed!")
        end
    end,
})
