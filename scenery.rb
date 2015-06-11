class Scenery
	attr_reader :map, :size, :score_x, :score_o, :continue, :player_x, :player_o

	def initialize(map)
		@map[map][map] = nil
		@size = map
	end

	def save_score(player_x, player_o)
		@score_x = player_x unless player_x == nil
		@score_o = player_o unless player_o == nil
	end

	def score_player_x
		@score_x
	end

	def score_player_o
		@score_o
	end

	def player_initialize?
		if player_x
			"x"
		else
			"o"
		end
	end

	def save_player_win(p_x, p_o)
		if player_x
			@player_x = p_x
		else
			@player_o = p_o
		end
	end

	def save_continue(continue)
		@continue = continue
	end

	def continue?
		@continue
	end
end