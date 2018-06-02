class Cd < ApplicationRecord
	has_many :songs, dependent: :destroy, inverse_of: :cd
	attachment :image
	accepts_nested_attributes_for :songs, allow_destroy: true
<<<<<<< HEAD
	# belongs_to :genre
	# has_many :cart_item
=======
	belongs_to :genre

>>>>>>> 07de0020f36ceb06378ab93f4c78485a746f4944
end
