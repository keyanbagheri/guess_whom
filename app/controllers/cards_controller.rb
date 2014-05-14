class CardsController < ActionController::Base

  layout 'application'

  #need to edit everythin below

  get '/' do
    @cards = Card.all
    erb :cardindex
  end

  get '/cards/:id' do
  # show me a single cards with given id
  card_id = params[:id]
  @card = Card.find(card_id)
  erb :focus
end



get '/cards/:id/update' do
  card_id = params[:id]
  @card = Card.find(card_id)
  erb :update
end

post '/cards/:id/update' do
  # processes new cards data
  card_id = params[:id]
  # @conn.exec("UPDATE cards SET quantity = '0' WHERE id = '#{id}';")
  card = Card.find(card_id)
  card.male = params[:male]
  card.glasses = params[:glasses]
  card.hat = params[:hat]
  card.facial_hair = params[:facial_hair]
  card.beard = params[:beard]
  card.mustache = params[:mustache]
  card.jewelry = params[:jewelry]
  card.earrings = params[:earrings]
  card.facial_piercing = params[:facial_piercing]
  card.hair_color = params[:hair_color]
  card.eye_color = params[:eye_color]
  card.save!
  redirect "/"
end

get '/cards/:id/delete' do
  # deletes a single cards with given id
  card_id = params[:id]
  card = Card.find(card_id)
  card.destroy
  redirect "/"
  # "You have deleted #{card_id.to_s}"
end


#### GAME ENGINE
get '/display_game' do
  erb :game
end


get '/reset_game' do
  Game_engine.reset_game()
  redirect 'display_game'
end


get '/question_selection/:question_selected' do
  @question_selected = params[:question_selected]
  Game_engine.mark_question_as_revealed(@question_selected)
  redirect '/display_game'

end


get '/winner_inquiry/:card_selected_username' do
  @card_selected_username = params[:card_selected_username]
  if Game_engine.check_if_winner_by_username(@card_selected_username)
    erb :win_message
  elsif Game_engine.wrong_guess_counter >= Game_engine.guesses_allowed
    Game_engine.reset_game()
    erb :loose_message
  else
    erb :guessed_wrong_message
  end
end

end

