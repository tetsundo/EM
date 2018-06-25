class AddAasmStateToSolds < ActiveRecord::Migration[5.2]
  def change
    add_column :solds, :state, :string
  end
end
