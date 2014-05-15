class GamesController < ActionController::Base
	def game_reset
		#start a new game. Play
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