class CdComment < ApplicationRecord
	belongs_to :user
	belongs_to :cd
end
