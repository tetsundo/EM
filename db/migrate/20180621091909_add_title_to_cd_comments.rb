class AddTitleToCdComments < ActiveRecord::Migration[5.2]
  def change
    add_column :cd_comments, :comment_title, :string
  end
end
