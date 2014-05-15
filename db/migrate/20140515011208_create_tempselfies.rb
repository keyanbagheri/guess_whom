class CreateTempselfies < ActiveRecord::Migration
  def change
    create_table :tempselfies do |t|
      t.string :instagram_username
      t.string :photo_url

      t.timestamps
    end
  end
end
