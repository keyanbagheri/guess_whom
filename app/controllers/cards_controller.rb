class CardsController < ActionController::Base

  layout 'application'

  #need to edit everythin below

  def index
  	@cards = Card.all
  end

  def show
    card_id = params[:id]
    @card = Card.find(card_id)
  end

  def delete
  	id = params[:id]
  	Card.delete(id)
  	redirect_to '/'
  end

# =begin ######### Copied this section to temp.rb for API work

# get '/cards/new' do
#   # shows a form to input new cards
#   #comment out erbnew
# end

# post '/cards' do
#   # processes new cards data
#   username = params[:username]
#   description = params[:description]
#   url = params[:url]

#   Card.create(
#     username: username,
#     description: description,
#     photo_url: url
#     )
#   redirect "/"
# end

# =end

# get '/cards/:id/update' do
#   card_id = params[:id]
#   @card = Card.find(card_id)
# end

# post '/cards/:id/update' do
#   # processes new cards data
#   card_id = params[:id]
#   # @conn.exec("UPDATE cards SET quantity = '0' WHERE id = '#{id}';")
#   card = Card.find(card_id)
#   card.male = params[:male]
#   card.glasses = params[:glasses]
#   card.hat = params[:hat]
#   card.facial_hair = params[:facial_hair]
#   card.beard = params[:beard]
#   card.mustache = params[:mustache]
#   card.jewelry = params[:jewelry]
#   card.earrings = params[:earrings]
#   card.facial_piercing = params[:facial_piercing]
#   card.hair_color = params[:hair_color]
#   card.eye_color = params[:eye_color]
#   card.save!
#   redirect "/"
# end

# get '/cards/:id/delete' do
#   # deletes a single cards with given id
#   card_id = params[:id]
#   card = Card.find(card_id)
#   card.destroy
#   redirect "/"
#   # "You have deleted #{card_id.to_s}"
# end



#  #################### Copied temp_api


# #### CARD GENERATOR
# get '/generate_new_card' do
#   url = "https://api.instagram.com/v1/tags/selfie/media/recent?client_id=4103708a8bb2413ea434757ae68c811f"
#   response = HTTParty.get(url)
#   full_selfie_array = []
#   @@selfie_array = []
#   numbers = (0...20).to_a.sample 9
#   numbers.each do |x|
#     image_url = response["data"][x]["images"]["standard_resolution"]["url"]
#     username = response["data"][x]["user"]["username"]
#     current_selfie_array = [username, image_url]
#     @@selfie_array << current_selfie_array
#   end
#   #comment out erbgenerate_new_card
# end

# get '/generate_new_card/:selfie_username' do
#   card_username = params[:selfie_username]
#   card_url = ''
#   @@selfie_array.each do |person|
#     if person[0]. == card_username
#       card_url = person[1]
#     end
#   end
#   @@additional_card = Card.new
#   @@additional_card[:username] = card_username
#   @@additional_card[:photo_url] = card_url
#   @@additional_card[:description] = "description"
#   #comment out erbpopulate_new_card
# end

# post '/populate' do
#   Card.create(
#     username: @@additional_card[:username],
#     photo_url: @@additional_card[:photo_url],
#     description: @@additional_card[:description],
#     male: params[:male],
#     glasses: params[:glasses],
#     hat: params[:hat],
#     facial_hair: params[:facial_hair],
#     beard: params[:beard],
#     mustache: params[:mustache],
#     jewelry: params[:jewelry],
#     earrings: params[:earrings],
#     facial_piercing: params[:facial_piercing],
#     hair_color: params[:hair_color],
#     eye_color: params[:eye_color]
#     )
#   redirect "/"
# end




# #### GAME ENGINE
# get '/display_game' do
# end


#   def new
#     url = "https://api.instagram.com/v1/tags/selfie/media/recent?client_id=4103708a8bb2413ea434757ae68c811f"
#     response = HTTParty.get(url)
#     full_selfie_array = []
#     @selfie_array = []
#     numbers = (0...20).to_a.sample 9
#     numbers.each do |x|
#       image_url = response["data"][x]["images"]["standard_resolution"]["url"]
#       username = response["data"][x]["user"]["username"]
#       current_selfie_array = [username, image_url]
#       @selfie_array << current_selfie_array
#     end
#   end


# get '/question_selection/:question_selected' do
#   @question_selected = params[:question_selected]
#   Game_engine.mark_question_as_revealed(@question_selected)
#   redirect '/display_game'

# end


# get '/winner_inquiry/:card_selected_username' do
#   @card_selected_username = params[:card_selected_username]
#   if Game_engine.check_if_winner_by_username(@card_selected_username)
#     @won_game = true
#   elsif Game_engine.wrong_guess_counter >= Game_engine.guesses_allowed
#     Game_engine.reset_game()
#     @won_game = false
#   else
#     #comment out erbguessed_wrong_message
#   end
# end

#   get '/' do
#     @cards = Card.all
#     erb :cardindex
#   end

#   get '/cards/:id' do
#   # show me a single cards with given id
#   card_id = params[:id]
#   @card = Card.find(card_id)
#   erb :focus
# end



# get '/cards/:id/update' do
#   card_id = params[:id]
#   @card = Card.find(card_id)
#   erb :update
# end

# post '/cards/:id/update' do
#   # processes new cards data
#   card_id = params[:id]
#   # @conn.exec("UPDATE cards SET quantity = '0' WHERE id = '#{id}';")
#   card = Card.find(card_id)
#   card.male = params[:male]
#   card.glasses = params[:glasses]
#   card.hat = params[:hat]
#   card.facial_hair = params[:facial_hair]
#   card.beard = params[:beard]
#   card.mustache = params[:mustache]
#   card.jewelry = params[:jewelry]
#   card.earrings = params[:earrings]
#   card.facial_piercing = params[:facial_piercing]
#   card.hair_color = params[:hair_color]
#   card.eye_color = params[:eye_color]
#   card.save!
#   redirect "/"
# end

# get '/cards/:id/delete' do
#   # deletes a single cards with given id
#   card_id = params[:id]
#   card = Card.find(card_id)
#   card.destroy
#   redirect "/"
#   # "You have deleted #{card_id.to_s}"
# end


# #### GAME ENGINE
# get '/display_game' do
#   erb :game
# end


# get '/reset_game' do
#   Game_engine.reset_game()
#   redirect 'display_game'
# end


# get '/question_selection/:question_selected' do
#   @question_selected = params[:question_selected]
#   Game_engine.mark_question_as_revealed(@question_selected)
#   redirect '/display_game'

# end


# get '/winner_inquiry/:card_selected_username' do
#   @card_selected_username = params[:card_selected_username]
#   if Game_engine.check_if_winner_by_username(@card_selected_username)
#     erb :win_message
#   elsif Game_engine.wrong_guess_counter >= Game_engine.guesses_allowed
#     Game_engine.reset_game()
#     erb :loose_message
#   else
#     erb :guessed_wrong_message
#   end
end