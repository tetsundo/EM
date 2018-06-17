class SoldItem < ApplicationRecord
	belongs_to :sold
	has_many :cds
end
