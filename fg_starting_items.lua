core.register_on_newplayer(function(player)	 	 
 local player_name = player:get_player_name()
 local inv = player:get_inventory()    
 inv:add_item('main', 'forgotten_monsters:fgbook')	
end)

