class Card < ActiveRecord::Base

  has_one :user

  has_many :cards_included_in_game
  has_many :games, through: :cards_included_in_game

  has_many :card_tags
  has_many :questions, through: :card_tags
  
  

  # no attr_accessor

  # include Facebook
  # include Imgur
  # include Instagram

  # def return_property_when_passed_symbol(symbol_passed_in)
  #   case symbol_passed_in

  #     when :male
  #     self.male()

  #     when :glasses
  #     self.glasses()

  #     when :facial_hair
  #     self.facial_hair()

  #     when :hat
  #     self.hat()

  #     when :beard
  #     self.beard()

  #     when :mustache
  #     self.mustache()

  #     when :jewelry
  #     self.jewelry()

  #     when :earrings
  #     self.earrings()

  #     when :facial_piercing
  #     self.earrings()

  #     when :hair_color
  #     self.hair_color()

  #     when :eye_color
  #     self.eye_color()
  #   end
  # end

end

