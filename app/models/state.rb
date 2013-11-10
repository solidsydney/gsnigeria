class State < ActiveRecord::Base
  has_many :markets
  has_many :hotels
  validates_uniqueness_of :name



end
