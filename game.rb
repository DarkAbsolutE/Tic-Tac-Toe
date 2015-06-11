class Game
	
	verification = Verification.new

	def start(type)
		scenery = Scenery.new(type)
		unless scenery.continue?
			scenery.score(0, 0)
			scenery.save_player_win(true, false)
		end
		player_ini = scenery.player_initialize?
	end
end