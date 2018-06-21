class RemoveSoldItemIdFromCdComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :cd_comments, :sold_item_id, :integer
  end
end
