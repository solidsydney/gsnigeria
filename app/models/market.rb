class Market < ActiveRecord::Base
  has_many :shops
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
