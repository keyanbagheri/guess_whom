class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :created_by_user_id
      t.integer :last_modified_by_user_id
      t.string :facebook_username
      t.string :instagram_username
      t.string :photo_url
      t.string :description

      t.timestamps
    end
  end
end
