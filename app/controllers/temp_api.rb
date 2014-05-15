###### Temporary imaginary controller for cards generation
class CardsController < ActionController::Base

  def new
    url = "https://api.instagram.com/v1/tags/selfie/media/recent?client_id=4103708a8bb2413ea434757ae68c811f"
    response = HTTParty.get(url)
    full_selfie_array = []
    @selfie_array = []
    numbers = (0...20).to_a.sample 9
    numbers.each do |x|
      image_url = response["data"][x]["images"]["standard_resolution"]["url"]
      username = response["data"][x]["user"]["username"]
      current_selfie_array = [username, image_url]
      @selfie_array << current_selfie_array
    end
  end


  def create
    Card.create(card_attributes)
  end



  private

  def card_attributes

    params.require(:card).permit(:username, :description, :photo)
  end

end



post '/cards' do
  # processes new cards data
  username = params[:username]
  description = params[:description]
  url = params[:url]

  Card.create(
    username: username,
    description: description,
    photo_url: url
    )
  redirect "/"
end



get '/generate_new_card' do
  url = "https://api.instagram.com/v1/tags/selfie/media/recent?client_id=4103708a8bb2413ea434757ae68c811f"
  response = HTTParty.get(url)
  full_selfie_array = []
  @@selfie_array = []
  numbers = (0...20).to_a.sample 9
  numbers.each do |x|
    image_url = response["data"][x]["images"]["standard_resolution"]["url"]
    username = response["data"][x]["user"]["username"]
    current_selfie_array = [username, image_url]
    @@selfie_array << current_selfie_array
  end
  erb :generate_new_card
end

get '/generate_new_card/:selfie_username' do
  card_username = params[:selfie_username]
  card_url = ''
  @@selfie_array.each do |person|
    if person[0]. == card_username
      card_url = person[1]
    end
  end
  @@additional_card = Card.new
  @@additional_card[:username] = card_username
  @@additional_card[:photo_url] = card_url
  @@additional_card[:description] = "description"
  erb :populate_new_card
end

post '/populate' do
  Card.create(
    username: @@additional_card[:username],
    photo_url: @@additional_card[:photo_url],
    description: @@additional_card[:description],
    male: params[:male],
    glasses: params[:glasses],
    hat: params[:hat],
    facial_hair: params[:facial_hair],
    beard: params[:beard],
    mustache: params[:mustache],
    jewelry: params[:jewelry],
    earings: params[:earings],
    facial_piercing: params[:facial_piercing],
    hair_color: params[:hair_color],
    eye_color: params[:eye_color]
    )
  redirect "/"
end

