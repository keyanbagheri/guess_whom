class CardsController < ActionController::Base

  layout 'application'

  def index
  	@cards = Card.all
  end

  def new
    Tempselfie.delete_all
    url = "https://api.instagram.com/v1/tags/selfie/media/recent?client_id=4103708a8bb2413ea434757ae68c811f"
    response = HTTParty.get(url)
    numbers = (0...20).to_a.sample 9
    numbers.each do |x|
      photo_url = response["data"][x]["images"]["standard_resolution"]["url"]
      instagram_username = response["data"][x]["user"]["username"]
      Tempselfie.create({
        instagram_username: instagram_username,
        photo_url: photo_url
        })
    end
  end


  def generate
    user = Tempselfie.find_by_instagram_username(params[:username])
    # binding.pry
    @new_selfie = Card.new
    @new_selfie.instagram_username = user.instagram_username
    @new_selfie.phoo
    # binding.pry
  end

  def create

    card_attributes = params[:new_selfie]
    Card.create({
      instagram_username: card_attributes[:instagram_username],
      photo_url: card_attributes[:photo_url],
      gender_male: card_attributes[:gender_male],
      gender_female: card_attributes[:gender_female],
      accessory_eyewear_glasses: card_attributes[:accessory_eyewear_glasses],
      clothing_hat: card_attributes[:clothing_hat],
      hair_facial: card_attributes[:hair_facial],
      hair_facial_beard: card_attributes[:hair_facial_beard],
      hair_facial_mustache: card_attributes[:hair_facial_mustache],
      jewelry: card_attributes[:jewelry],
      jewelry_piercing_ear: card_attributes[:jewelry_piercing_ear],
      jewelry_piercing_facial: card_attributes[:jewelry_piercing_facial],
      hair_length_long: card_attributes[:hair_length_long],
      hair_length_short: card_attributes[:hair_length_short],
      hair_color_brunette: card_attributes[:hair_color_brunette],
      eye_color_brown: card_attributes[:eye_color_brown],
      hair_color_blonde: card_attributes[:hair_color_blonde],
      hair_color_red: card_attributes[:hair_color_red],
      hair_color_black: card_attributes[:hair_color_black],
      eye_color_green: card_attributes[:eye_color_green],
      eye_color_blue: card_attributes[:eye_color_blue]
      })

    redirect_to '/cards'
  end

  def show
    card_id = params[:id].to_i
    @card = Card.find(card_id)
  end

  def delete
  	id = params[:id]
  	Card.delete(id)
  	redirect_to '/'
  end

 private

  # strong params
  def card_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:card).permit(:instagram_username, :photo_url, )
  end

end
