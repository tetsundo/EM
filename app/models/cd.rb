class Cd < ApplicationRecord
	has_many :songs, dependent: :destroy
	has_many :cart_items
	belongs_to :genre
	accepts_nested_attributes_for :songs, allow_destroy: true
end
