class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :last_name,       null: false
      t.string :first_name,      null: false
      t.string :last_name_kana,  null: false
      t.string :first_name_kana, null: false
      t.string :postal_code,     null: false
      t.integer :prefecture_id,  null: false
      t.string :city,            null: false
      t.string :block,           null: false
      t.string :building
      t.string :phone_number,    null: false
      t.references :user,        null: false, foreign_key: true
      t.timestamps
    end
  end
end
