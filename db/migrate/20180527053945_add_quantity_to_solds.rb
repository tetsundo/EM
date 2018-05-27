class AddQuantityToSolds < ActiveRecord::Migration[5.2]
  def change
    add_column :solds, :quantity, :integer
  end
end
