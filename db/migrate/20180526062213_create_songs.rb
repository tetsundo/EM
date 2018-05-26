class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.integer :cd_id
      t.integer :order

      t.timestamps
    end
  end
end
