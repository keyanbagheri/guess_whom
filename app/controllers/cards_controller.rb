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

end
