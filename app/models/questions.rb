class Questions < ActiveRecord::Base
	
	has_many :card_tags
	has_many :game_questions


end
