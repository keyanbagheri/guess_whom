class User < ActiveRecord::Base

	has_many :games
	belongs_to :card
end
