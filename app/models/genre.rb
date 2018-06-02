class Genre < ApplicationRecord
	has_many :cds, inverse_of: :genre
end
