class Song < ApplicationRecord
	belongs_to :cd, optional: true
	

end
