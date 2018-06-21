class CreateCdComments < ActiveRecord::Migration[5.2]
  def change
    create_table :cd_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :sold_item_id
      t.integer :cd_id

      t.timestamps
    end
  end
end
