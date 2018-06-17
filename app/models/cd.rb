class Cd < ApplicationRecord
	has_many :songs, dependent: :destroy, inverse_of: :cd
	attachment :image
	accepts_nested_attributes_for :songs, allow_destroy: true
	belongs_to :genre, inverse_of: :cds
	has_many :cart_items
	belongs_to :sold_item
	with_options presence: true do
	validates :jacket_name
	validates :genre_id
	validates :remaining_quantity
	validates :disk
	validates :price
	validates :release_date
	validates :rabel_name
	end
end
