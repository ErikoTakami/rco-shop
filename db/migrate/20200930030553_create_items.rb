class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title,      null: false
      t.string :artist,     null: false
      t.string :text,       null: false
      t.integer :genre_id,  null: false
      t.string :country
      t.integer :format_id, null: false
      t.integer :status_id, null: false
      t.integer :price,     null: false
      t.integer :stock,     null: false
      t.timestamps
    end
  end
end
