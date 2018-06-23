class ChangeDatatypeStarAgainOfCdComments < ActiveRecord::Migration[5.2]
  def change
  	change_column :cd_comments, :star, :float
  end
end
