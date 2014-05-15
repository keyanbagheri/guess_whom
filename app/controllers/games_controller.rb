class GamesController < ActionController::Base

	#### CREATE A NEW GAME RE-WRITE. MOVE GUTS TO MODEL
	def reset_game
		@current_game = Game.start_game
		# render json: @current_game
		redirect_to "/play/#{@current_game.id}"
		# play()
	end

	def wrong_guess
		card_guessed = Card.find(params[:card_id])
		@current_game.num_of_guesses_so_far = @current_game.num_of_guesses_so_far + 1
		@current_game.save!
		if @current_game.num_of_guesses_so_far < @current_game.allowable_guesses
			redirect_to "/games/wrong"
		else
			if card_guessed == @current_game.winning_card_id
				@won_game = true
			else
				@won_game = false
			end
			redirect_to "/games/outcome"
		end

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





	# end

	# def process_guess_made
	# 	#evaluate if guess was correct, route appropriately
	# end


	def process_winner_inquiry
		@card_guessed = Card.find(params[:card_id])
		@current_game.num_of_guesses_so_far= @current_game.num_of_guesses_so_far +1
		if card_guessed.id == @current_game.winning_card_id
			redirect_to "/play/#{@current_game.id}/win"
		else
			if @current_game.num_of_guesses_so_far >= @current_game.allowable_guesses
				redirect_to "/play/#{@current_game.id}/lose"
			else
				redirect_to "/play/#{@current_game.id}"
			end
		end
	end


end