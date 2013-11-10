class Shop < ActiveRecord::Base
  has_many :products
  has_attached_file :photo, :styles => { :medium => "200x200>", :thumb => "100x100>"}
  scope :recent, :order => ('id DESC')

end
