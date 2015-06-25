class Game

	attr_reader :verification, :scenery, :player_ini

	def start(type)
		@scenery = Scenery.new(type)
		unless @scenery.continue?
			@scenery.save_score(0, 0)
			@scenery.save_player_win(true, false)
		end
		@player_ini = scenery.player_initialize?
	end

	def finish(player_win)
		if player_win == "x"
			@scenery.save_score(@scenery.core_player_x++, nil)
			@scenery.save_player_win(true, false)
		else
			@scenery.save_score(nil, @scenery.core_player_o++)
			@scenery.save_player_win(false, true)
		end
		@scenery.save_continue(true)
	end

	def restart
		@scenery.save_continue(false)
	end

	def play(move)
		@verification = Verification.new
		if @verification.next(move) == "true_win"
			"Win"
		elsif @verification.next(move) == "full"
			"Lose"
		end
	end
end
