class CreateCardsIncludedInGames < ActiveRecord::Migration
  def change
    create_table :cards_included_in_games do |t|
      t.integer :game_id
      t.integer :card_id
      t.boolean :revealed_status

      t.timestamps
    end
  end
end
