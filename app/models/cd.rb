class Cd < ApplicationRecord
	has_many :songs
	has_many :cart_items
	belongs_to :genre
end
