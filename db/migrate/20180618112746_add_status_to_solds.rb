class AddStatusToSolds < ActiveRecord::Migration[5.2]
  def change
    add_column :solds, :status, :integer
  end
end
