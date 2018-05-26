class Cart < ApplicationRecord
	has_many :cart_items
	has_many :solds
	belongs_to :user
end
