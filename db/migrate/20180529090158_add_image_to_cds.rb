class AddImageToCds < ActiveRecord::Migration[5.2]
  def change
    add_column :cds, :image_id, :string
  end
end
