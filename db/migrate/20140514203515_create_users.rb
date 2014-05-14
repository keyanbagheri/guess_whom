class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :instagram_username
      t.integer :card_id

      t.timestamps
    end
  end
end
