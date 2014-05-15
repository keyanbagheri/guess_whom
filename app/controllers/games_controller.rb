class GamesController < ActionController::Base

	#### CREATE A NEW GAME RE-WRITE. MOVE GUTS TO MODEL
	def reset_game
		@current_game = Game.start_game
  	end




	

	def play
		#play page. reload
	end

	def process_question_asked
		#someone asked a question, reveal the boolean, update the game, reload
	end

	def process_guess_made
		#evaluate if guess was correct, route appropriately
	end

end