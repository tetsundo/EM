class Cd < ApplicationRecord
	has_many :songs, dependent: :destroy, inverse_of: :cd
	attachment :image
	accepts_nested_attributes_for :songs, allow_destroy: true
	# belongs_to :genre
	# has_many :cart_item
end
