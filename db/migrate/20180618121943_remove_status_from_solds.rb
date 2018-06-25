class RemoveStatusFromSolds < ActiveRecord::Migration[5.2]
  def change
    remove_column :solds, :status, :integer
  end
end
