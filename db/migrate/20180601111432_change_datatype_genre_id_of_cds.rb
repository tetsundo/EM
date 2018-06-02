class ChangeDatatypeGenreIdOfCds < ActiveRecord::Migration[5.2]
  def change
  	def change
  	change_column :cds, :genre_id, :integer
  end
  end
end
