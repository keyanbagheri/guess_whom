class CardsController < ActionController::Base

  layout 'application'

  def index
  	@cards = Card.all
  end

  def new
    url = "https://api.instagram.com/v1/tags/selfie/media/recent?client_id=4103708a8bb2413ea434757ae68c811f"
    response = HTTParty.get(url)
    full_selfie_array = []
    @selfie_array = []
    numbers = (0...20).to_a.sample 9
    numbers.each do |x|
      temp_card = Card.new

      temp_card.photo_url = response["data"][x]["images"]["standard_resolution"]["url"]
      temp_card.instagram_username = response["data"][x]["user"]["username"]
      # current_selfie_array = [username, image_url]
      @selfie_array << temp_card # current_selfie_array

    end
  end


  def generate
    @selfie = params[:username]
  end


  private

  def card_attributes

    params.require(:card).permit(:username, :description, :photo_url)
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

end
