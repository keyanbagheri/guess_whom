class GamesController < ActionController::Base

	#### CREATE A NEW GAME RE-WRITE. MOVE GUTS TO MODEL

	def reset_game
		@current_game = Game.start_game
		# render json: @current_game
		redirect_to "/play/#{@current_game.id}"
		# play()

	end


	def play
		# render json: @current_game.cards
		@current_game = Game.find(params[:game_id])
		
		# render json: @current_game
		# render json: @current_game.cards

		#play page. reload
	end

	# def process_question_asked
		# @question_asked = params({input_hash})
		#someone asked a question, reveal the boolean, update the game, reload
		# @current_game = Game.find(params[:game_id])

		# @card_to_modify = @current_game.cards.find



	def process_winner_inquiry
		@current_game = Game.find(params[:game_id])
		@card_guessed = Card.find(params[:card_id])

		win_status = @current_game.process_winner_inquiry(@card_guessed.id)
		case win_status
			when :win
				# redirect_to "/play/#{@current_game.id}/win"
				render_meth
			when :lose
				# redirect_to "/play/#{@current_game.id}/lose"
				render_meth
			when :return_to_game
				# redirect_to "/play/#{@current_game.id}"
				render_meth()
		end
				
	end

	def render_meth
		@current_game = Game.find(params[:game_id])
		render json: @current_game
	end
end