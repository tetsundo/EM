class Cart < ApplicationRecord
	has_many :cart_items, dependent: :destroy
	# cartレコードをdestoryメソッドで削除したら、Railsがそのcartに紐づいていたcart_itemを全て削除してくれる
	has_many :solds
	belongs_to :user
end
