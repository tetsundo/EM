class SoldItem < ApplicationRecord
	belongs_to :sold
	belongs_to :cd
	has_many :cd_comments
end
