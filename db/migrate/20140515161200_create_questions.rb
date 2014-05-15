class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text
      t.boolean :included_in_game

      t.timestamps
    end
  end
end
