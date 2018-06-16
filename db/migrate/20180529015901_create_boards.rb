class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :content
      t.integer :weather

      t.timestamps
    end
  end
end
