class AddCartIdToSolds < ActiveRecord::Migration[5.2]
  def change
    add_column :solds, :cart_id, :integer
  end
end
