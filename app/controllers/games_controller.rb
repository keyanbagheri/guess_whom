class GamesController < ActionController::Base

	#### CREATE A NEW GAME RE-WRITE. MOVE GUTS TO MODEL
	def reset_game
		@current_game = Game.start_game
		# render json: @current_game
		redirect_to "/play/#{@current_game.id}"
		# play()
<<<<<<< HEAD
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
=======
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
  		end
  		redirect_to "/games/outcome"
  	end
>>>>>>> a77f1a13fd181f4c9960a9b716ffe524e0be22ec

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
		@current_game = Game.find(params[:game_id])
		@card_guessed = Card.find(params[:card_id])
<<<<<<< HEAD
		@current_game.num_of_guesses_so_far= @current_game.num_of_guesses_so_far +1
		if card_guessed.id == @current_game.winning_card_id
			redirect_to "/play/#{@current_game.id}/win"
		else
			if @current_game.num_of_guesses_so_far >= @current_game.allowable_guesses
				redirect_to "/play/#{@current_game.id}/lose"
			else
				redirect_to "/play/#{@current_game.id}"
=======
		@current_game.num_of_guesses_so_far = @current_game.num_of_guesses_so_far + 1
		if @card_guessed.id == @current_game.winning_card_id
			# render text: 'WIN'
      		redirect_to "/play/#{@current_game.id}/win"
    		else
      		if @current_game.num_of_guesses_so_far >= @current_game.allowable_guesses
      			# render text: 'LOSE'
      			redirect_to "/play/#{@current_game.id}/lose"
      		else
      			# render text: 'TRY AGAIN'
      			redirect_to "/play/#{@current_game.id}"
>>>>>>> a77f1a13fd181f4c9960a9b716ffe524e0be22ec
			end
		end
	end
end