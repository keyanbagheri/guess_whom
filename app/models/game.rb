class Game < ActiveRecord::Base
	### This is a game-record. It serves as a log of all games played. 
	# It SHOULD also incorporates the functionality fortunately found in the game engine

	belongs_to :user
	has_many :cards_included_in_game
	has_many :cards, through: :cards_included_in_game
	
	def self.start_game
		#Creates new game and sets defaults. These should probably be called from user preferences or external config file in version X.
		current_game = self.create()

		# unless input_hash[:num_of_cards_in_play]
			current_game.num_of_cards_in_play= 9
		# end

		# unless input_hash[:allowable_guesses]
			current_game.allowable_guesses= 3
		# end

		# unless input_hash[:num_of_guesses_so_far]
			current_game.num_of_guesses_so_far= 0
		# end


		# Select a random hand of cards to play with
		# The resulting join table should be accessible via .cards
		# unless input_hash[:cards_included_in_game]
			full_deck = Card.all.shuffle


			current_game.num_of_cards_in_play.times do
  				CardsIncludedInGame.create({
    										game_id: current_game.id,
    										card_id: full_deck.pop.id
									})
  			end
  		# end

		# unless input_hash[:winning_card_id]
			current_game.winning_card_id = current_game.cards.sample.id
		# end

		current_game.save!
		puts current_game
		return current_game
	end


	def process_winner_inquiry(card_guessed_id)	
		# puts self
		temp = self.num_of_guesses_so_far
		self.num_of_guesses_so_far = temp +1
		if card_guessed_id == @winning_card_id
			return :win
			# render text: 'WIN'
      		# redirect_to "/play/#{id}/win"
    		else
      		if self.num_of_guesses_so_far >= self.allowable_guesses
      			return :lose
      			# render text: 'LOSE'
      			# redirect_to "/play/#{id}/lose"
      		else
      			return :return_to_game
      			# render text: 'TRY AGAIN'
      			# redirect_to "/play/#{id}"
			end
		end
		self.save!
	end



	## GAME CONFIG
		## THIS STUFF IS A KLUDGE AND SHOULD BE RE-THOUGHT. it might also be set in user prefernces perhaps.
		  @@tag_questions_order = [
		    :male,
		    :glasses,
		    :hat,
		    :facial_hair,
		    :beard,
		    :mustache,
		    :jewelry,
		    :earrings,
		    :facial_piercing,
		    :hair_color,
		    :eye_color]


		  @@sym_to_questions_mapping = {
		    male: "Male?",
		    glasses: "Glasses?",
		    hat: "Hat?",
		    facial_hair: "Facial Hair?",
		    beard: "Beard?",
		    mustache: "Mustache?",
		    jewelry: "Jewelry?",
		    earrings: "Earrings?",
		    facial_piercing: "Facial Piercing?",
		    hair_color: "Hair Color?",
		    eye_color: "Eye Color?"}

		
end



# class Game_engine


#   ## GAME CONSTANTS
#   @@deck = Card.all
#   @@grid_cards = @@deck.sample(@@number_of_cards)
#   @@winner = @@deck.sample(1)
#   @@array_of_questions = [] #gets populated later


#   ## GAME VARIABLES
#   @@wrong_guess_counter = 0


#   ## GAME ATTIRIBUTE ACCESORS
#   def self.deck
#     return @@deck
#   end

#   def self.grid_cards
#     return @@grid_cards
#   end

#   def self.winner
#     return @@winner
#   end

#   def self.array_of_questions
#     return @@array_of_questions
#   end

#   def self.guesses_allowed
#     return @@guesses_allowed
#   end

#   def self.wrong_guess_counter
#     return @@wrong_guess_counter
#   end


# #   ## GAME METHODS
# #   #### setup methods

#   def self.reset_game()
#     @cards = Card.all
#     @@grid_cards = @@deck.sample(@@number_of_cards)
#     @@winner = @@deck.sample(1)[0]
#     populate_array_of_questions()
#     @@wrong_guess_counter = 0
#   end

#   def self.populate_array_of_questions
#     @@array_of_questions = []         # MAYBE THIS SHOULDN'T BE HERE????

#     @@tag_questions_order.each do |k|
#       @@array_of_questions << Question.new(k, @@sym_to_questions_mapping[k])
#     end
#   end


#   def self.mark_question_as_revealed(question_selected)
#     question_selected = question_selected.to_sym
#     index_of_question_selected = @@tag_questions_order.index(question_selected)

#     # binding.pry

#     @@array_of_questions[index_of_question_selected].question_revealed_status = true
#   end

#   def self.check_if_winner_by_username(card_selected_username)
#     @@wrong_guess_counter = @@wrong_guess_counter + 1
#     if card_selected_username == @@winner.username
#       return true
#     else
#       return false
#     end
#   end

# end



# class Question
#   attr_accessor :question_sym, :question_text, :question_revealed_status

#   def initialize(question_sym, question_text, question_revealed_status = false)
#     @question_sym = question_sym
#     @question_text = question_text
#     @question_revealed_status = question_revealed_status
#   end

# end
# #


