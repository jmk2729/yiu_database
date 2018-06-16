class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :food_name
      t.integer :calorie
      t.string :sort

      t.timestamps
    end
  end
end