class CreateSolds < ActiveRecord::Migration[5.2]
  def change
    create_table :solds do |t|
      t.integer :subtotal
      t.integer :user_id
      t.integer :cd_id

      t.timestamps
    end
  end
end
