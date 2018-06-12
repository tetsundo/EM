class AddSoldIdToSoldItems < ActiveRecord::Migration[5.2]
  def change
    add_column :sold_items, :sold_id, :integer
  end
end
