class CreateTusers < ActiveRecord::Migration[5.0]
  def change
    create_table :tusers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :address
      t.integer :birth

      t.timestamps
    end
  end
end
