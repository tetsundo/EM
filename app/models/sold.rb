class Sold < ApplicationRecord
	has_many :sold_items
	belongs_to :cart
	 belongs_to :user
end
