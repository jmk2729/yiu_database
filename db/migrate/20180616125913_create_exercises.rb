class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :title
      t.text :exercise
      t.text :meal
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
