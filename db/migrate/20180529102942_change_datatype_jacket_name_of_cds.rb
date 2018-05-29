class ChangeDatatypeJacketNameOfCds < ActiveRecord::Migration[5.2]
  def change
  	change_column :cds, :jacket_name, :string
  end
end
