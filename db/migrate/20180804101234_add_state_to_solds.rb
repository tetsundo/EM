class AddStateToSolds < ActiveRecord::Migration[5.2]
  def self.up
    add_column :solds, :aasm_state, :string
  end

  def self.down
    remove_column :jobs, :state
  end
end
