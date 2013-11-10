class Product < ActiveRecord::Base
  belongs_to :shop
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>"}
  scope :recent, :order => ('id DESC')
end
