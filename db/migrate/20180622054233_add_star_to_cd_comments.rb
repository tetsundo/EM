class AddStarToCdComments < ActiveRecord::Migration[5.2]
  def change
    add_column :cd_comments, :star, :string
  end
end
