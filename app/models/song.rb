class Song < ApplicationRecord
	belongs_to :cd, optional: true, inverse_of: :songs
end
