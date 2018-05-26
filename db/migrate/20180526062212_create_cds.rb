class CreateCds < ActiveRecord::Migration[5.2]
  def change
    create_table :cds do |t|
      t.integer :jacket_name
      t.string :genre_id
      t.string :carts_id
      t.integer :remaining_quantity
      t.datetime :release_date
      t.string :rabel_name
      t.string :artist_name
      t.integer :price

      t.timestamps
    end
  end
end
