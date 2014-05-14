class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :numb_cards_in_play
      t.integer :allowable_guesses
      t.integer :numb_of_guesses_so_far
      t.integer :winning_card_id

      t.timestamps
    end
  end
end
