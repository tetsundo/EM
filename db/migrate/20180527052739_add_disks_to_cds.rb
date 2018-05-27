class AddDisksToCds < ActiveRecord::Migration[5.2]
  def change
    add_column :cds, :disk, :integer
  end
end
