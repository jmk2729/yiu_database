class CreateLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures do |t|
      t.integer :total_count
      t.integer :fee
      t.string :date
      t.text :content
      t.references :user, foreign_key: true
      t.references :tuser, foreign_key: true

      t.timestamps
    end
  end
end
