class Sold < ApplicationRecord
	has_many :sold_items
	belongs_to :cart, optional: true
	 belongs_to :user
	 has_many :cds
  before_create :accept
include AASM

aasm do
  state :not_accept, :initial => true
  state :受付中
  state :準備中
  state :発送済み

  event :accept do
    transitions  :from => :not_accept, :to => :受付中
  end

  event :preparate do
    transitions :from => :受付中, :to => :準備中
  end

  event :ship do
    transitions :from => [:受付中, :準備中], :to => :発送済み
  end
end
end
