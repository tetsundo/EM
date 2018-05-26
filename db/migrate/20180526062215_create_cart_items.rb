class CreateCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :cart_items do |t|
      t.integer :cart_id
      t.integer :cd_id
      t.integer :quantity
      t.integer :user_id
      t.integer :price

      t.timestamps
    end
  end
end
